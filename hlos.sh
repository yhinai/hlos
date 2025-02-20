#!/bin/bash

# =======================================
# Environment Setup
# =======================================

# Set up build environment paths
STANDARD_OEM_DIR="${PWD}/matrix-la-1-0_ap_standard_oem"

REQUIRED_MODULES_SCRIPT="generate_prebuilts.sh"
REQUIRED_MODULES_DIR="${PWD}/${REQUIRED_MODULES_SCRIPT}"

KERNEL_DIR="${STANDARD_OEM_DIR}/KERNEL.PLATFORM.3.0.r13"
QSSI_DIR="${STANDARD_OEM_DIR}/LA.QSSI.14.0.r1"
VENDOR_DIR="${STANDARD_OEM_DIR}/LA.VENDOR.14.3.3.r1"

KERNEL_WROKSPACE="${STANDARD_OEM_DIR}/KERNEL_WORKSPACE"
QSSI_WROKSPACE="${STANDARD_OEM_DIR}/QSSI_WORKSPACE"
VENDOR_WROKSPACE="${STANDARD_OEM_DIR}/VENDOR_WORKSPACE"

SYNC_SCRIPT="${STANDARD_OEM_DIR}/LA.VENDOR.14.3.3.r1/LINUX/android/sync_snap_v2.sh"

# Configure git
git config --global http.followRedirects true
git config --global pack.threads "$(nproc)"
git config --global url.git@git.codelinaro.org:.insteadOf https://git.codelinaro.org/

# Set git user info (replace with your info)
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"


# =======================================
# Download HLOS Chipcode
# =======================================
git clone --depth 1 https://qpm-git.qualcomm.com/home2/git/google-inc/matrix-la-1-0_ap_standard_oem.git

# Set up sync script path
cd "${STANDARD_OEM_DIR}"

chmod +x "$SYNC_SCRIPT"
mkdir -p "${KERNEL_WROKSPACE}"
mkdir -p "${QSSI_WROKSPACE}"
mkdir -p "${VENDOR_WROKSPACE}"

mv "${STANDARD_OEM_DIR}/VIDEO.XR.4.0.r1" "${STANDARD_OEM_DIR}/VIDEO.XR.4.0"
mv "${STANDARD_OEM_DIR}/VIDEO_XR.LA.1.0.r1" "${STANDARD_OEM_DIR}/VIDEO_XR.LA.1.0"

# =======================================
# Build HLOS
# =======================================

# ---------[KERNEL.PLATFORM]--------- #

cd "${KERNEL_WROKSPACE}"

# Sync Kernel
"$SYNC_SCRIPT" \
    --jobs="$(nproc)" \
    --workspace_path="${KERNEL_WROKSPACE}" \
    --snap_release="${KERNEL_DIR}/kernel_platform/snap_release.xml" \
    --tree_type=KERNEL.PLATFORM.3.0.r13 \
    --prop_opt=chipcode \
    --repo_url=git@git.codelinaro.org:/clo/tools/repo.git \
    --repo_branch=aosp-new/stable \
    --nhprop_chipcode_path="${STANDARD_OEM_DIR}"

repo sync -j1 --fail-fast

# Build Kernel
bash kernel_platform/qcom/proprietary/prebuilt_HY11/vendorsetup.sh

export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH

# Build kernel with specific config
./kernel_platform/build_with_bazel.py -t niobe ALL


# -----------[QSSI]----------- #

# Configure git for QSSI
git config --global --unset url.git@git.codelinaro.org:.insteadOf

# Sync QSSI
cd "${QSSI_WROKSPACE}"
"$SYNC_SCRIPT" \
    --jobs="$(nproc)" \
    --workspace_path="${QSSI_WROKSPACE}" \
    --snap_release="${QSSI_DIR}/LINUX/android/snap_release.xml" \
    --tree_type=LA.QSSI.14.0.r1 \
    --prop_opt=chipcode \
    --repo_url=https://git.codelinaro.org/clo/tools/repo.git \
    --repo_branch=aosp-new/stable \
    --nhprop_chipcode_path="${STANDARD_OEM_DIR}"

repo sync -j1 --fail-fast

# Copy all files and folders using rsync
rsync -a --progress "${VENDOR_DIR}/LINUX/android/vendor/" "${VENDOR_WROKSPACE}/vendor/"

rm -rf out
make clean

source build/envsetup.sh
lunch qssi_xrM-userdebug
bash build.sh -j128 dist --qssi_only EXPERIMENTAL_USE_OPENJDK9=1.8

# Restore git config
git config --global url.git@git.codelinaro.org:.insteadOf https://git.codelinaro.org/


# ----------[VENDOR]---------- #

cd "${VENDOR_WROKSPACE}"

# Sync Vendor
"$SYNC_SCRIPT" \
    --jobs="$(nproc)" \
    --workspace_path="${VENDOR_WROKSPACE}" \
    --snap_release="${VENDOR_DIR}/LINUX/android/snap_release.xml" \
    --tree_type=vendor_techpack \
    --prop_opt=chipcode \
    --repo_url=git@git.codelinaro.org:/clo/tools/repo.git \
    --repo_branch=aosp-new/stable \
    --nhprop_chipcode_path="${STANDARD_OEM_DIR}"

repo sync -j1 --fail-fast

# Copy QSSI workspace to VENDOR workspace, excluding 'out' directory
rsync -a --progress \
    --exclude='out/' \
    "${QSSI_WROKSPACE}/" "${VENDOR_WROKSPACE}/"

mkdir -p "${VENDOR_WROKSPACE}/kernel_platform"

# Copy kernel_platform directory to VENDOR workspace
rsync -a --progress \
    "${KERNEL_WROKSPACE}/kernel_platform/" \
    "${VENDOR_WROKSPACE}/kernel_platform/"

mv "${VENDOR_WROKSPACE}/kernel_platform/out" "${VENDOR_WROKSPACE}/out"

exit 0

rm -rf out
make clean

mv "${REQUIRED_MODULES_DIR}" "${VENDOR_WROKSPACE}/"
chmod 777 ${REQUIRED_MODULES_SCRIPT}
./${REQUIRED_MODULES_SCRIPT}

# Build Vendor
source build/envsetup.sh
lunch niobe-userdebug
./kernel_platform/build/android/prepare_vendor.sh niobe gki
bash build.sh -j128 dist --target_only

exit 0
# =======================================
# Generate super.img
# =======================================
cd "${VENDOR_WROKSPACE}"

python vendor/qcom/opensource/core-utils/build/build_image_standalone.py \
    --image super \
    --qssi_build_path "${QSSI_WROKSPACE}" \
    --target_build_path "${VENDOR_WROKSPACE}" \
    --merged_build_path "${VENDOR_WROKSPACE}" \
    --target_lunch niobe \
    --output_ota \
    --skip_qiifa

exit 0
