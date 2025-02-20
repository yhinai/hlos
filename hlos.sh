#ƒ!/bin/bash

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

mv "${STANDARD_OEM_DIR}/VIDEO.XR.4.0.r1" "${STANDARD_OEM_DIR}/VIDEO.XR.4.0"
mv "${STANDARD_OEM_DIR}/VIDEO_XR.LA.1.0.r1" "${STANDARD_OEM_DIR}/VIDEO_XR.LA.1.0"

# =======================================
# Build HLOS
# =======================================

# ---------[KERNEL.PLATFORM]--------- #

cd "${KERNEL_DIR}"

# Sync Kernel
"$SYNC_SCRIPT" \
    --jobs="$(nproc)" \
    --workspace_path="${KERNEL_DIR}" \
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
cd "${QSSI_DIR}"
"$SYNC_SCRIPT" \
    --jobs="$(nproc)" \
    --workspace_path="${QSSI_DIR}" \
    --snap_release="${QSSI_DIR}/LINUX/android/snap_release.xml" \
    --tree_type=LA.QSSI.14.0.r1 \
    --prop_opt=chipcode \
    --repo_url=https://git.codelinaro.org/clo/tools/repo.git \
    --repo_branch=aosp-new/stable \
    --nhprop_chipcode_path="${STANDARD_OEM_DIR}"

repo sync -j1 --fail-fast

# # Copy all files and folders using rsync
# rsync -a --progress "${QSSI_DIR}/LINUX/android/vendor/" "${QSSI_DIR}/vendor/"

source build/envsetup.sh
lunch qssi_xrM-userdebug
bash build.sh -j$(nproc) dist --qssi_only EXPERIMENTAL_USE_OPENJDK9=1.8

# Restore git config
git config --global url.git@git.codelinaro.org:.insteadOf https://git.codelinaro.org/

exit 0
# ----------[VENDOR]---------- #

cd "${VENDOR_DIR}"

# Sync Vendor
"$SYNC_SCRIPT" \
    --jobs="$(nproc)" \
    --workspace_path="${VENDOR_DIR}" \
    --snap_release="${VENDOR_DIR}/LINUX/android/snap_release.xml" \
    --tree_type=vendor_techpack \
    --prop_opt=chipcode \
    --repo_url=git@git.codelinaro.org:/clo/tools/repo.git \
    --repo_branch=aosp-new/stable \
    --nhprop_chipcode_path="${STANDARD_OEM_DIR}"

repo sync -j1 --fail-fast

# Copy QSSI dir to VENDOR dir, excluding 'out' directory
rsync -a --progress --exclude='out/' \
    --exclude='.*/' --exclude='.*' \
    "${QSSI_DIR}/" "${VENDOR_DIR}/"
    
mkdir -p "${VENDOR_DIR}/kernel_platform"

# Copy kernel_platform directory to VENDOR dir
rsync -a --progress \
    "${KERNEL_DIR}/kernel_platform/" \
    "${VENDOR_DIR}/kernel_platform/"

mv "${VENDOR_DIR}/kernel_platform/out" "${VENDOR__DIR}/out"

exit 0

# mv "${REQUIRED_MODULES_DIR}" "${VENDOR__DIR}/"
# chmod 777 ${REQUIRED_MODULES_SCRIPT}
# ./${REQUIRED_MODULES_SCRIPT}

# Build Vendor
source build/envsetup.sh
lunch niobe-userdebug
./kernel_platform/build/android/prepare_vendor.sh niobe gki
bash build.sh -j$(nproc) dist --target_only BUILD_BROKEN_MISSING_REQUIRED_MODULES=true

exit 0
# =======================================
# Generate super.img
# =======================================
cd "${VENDOR_DIR}"

python vendor/qcom/opensource/core-utils/build/build_image_standalone.py \
    --image super \
    --qssi_build_path "${QSSI_DIR}" \
    --target_build_path "${VENDOR_DIR}" \
    --merged_build_path "${VENDOR_DIR}" \
    --target_lunch niobe \
    --output_ota \
    --skip_qiifa

exit 0
