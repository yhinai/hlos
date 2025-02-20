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

KERNEL_WORKSHOP="${KERNEL_DIR}/kernel_platform"
QSSI_WORKSHOP="${QSSI_DIR}/LINUX/android"
VENDOR_WORKSHOP="${VENDOR_DIR}/LINUX/android"

SYNC_SCRIPT_KERNEL="${KERNEL_WORKSHOP}/sync_snap_v2.sh"
SYNC_SCRIPT_QSSI="${QSSI_WORKSHOP}/sync_snap_v2.sh"
SYNC_SCRIPT_VENDOR="${VENDOR_WORKSHOP}/sync_snap_v2.sh"

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

chmod +x "$SYNC_SCRIPT_KERNEL"
chmod +x "$SYNC_SCRIPT_QSSI"
chmod +x "$SYNC_SCRIPT_VENDOR"

mv "${STANDARD_OEM_DIR}/VIDEO.XR.4.0.r1" "${STANDARD_OEM_DIR}/VIDEO.XR.4.0"
mv "${STANDARD_OEM_DIR}/VIDEO_XR.LA.1.0.r1" "${STANDARD_OEM_DIR}/VIDEO_XR.LA.1.0"

# =======================================
# Build HLOS
# =======================================

# ---------[KERNEL.PLATFORM]--------- #

cd "${KERNEL_DIR}"

# Sync Kernel
"$SYNC_SCRIPT_KERNEL" \
    --jobs="$(nproc)" \
    --workspace_path="${KERNEL_DIR}" \
    --snap_release="${KERNEL_WORKSHOP}/snap_release.xml" \
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

exit 0
# -----------[QSSI]----------- #

# Configure git for QSSI
git config --global --unset url.git@git.codelinaro.org:.insteadOf

# Sync QSSI
cd "${QSSI_WORKSHOP}"

"$SYNC_SCRIPT_QSSI" \
    --jobs="$(nproc)" \
    --workspace_path="${QSSI_WORKSHOP}" \
    --snap_release="${QSSI_WORKSHOP}/snap_release.xml" \
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

cd "${VENDOR_WORKSHOP}"

# Sync Vendor
"$SYNC_SCRIPT_VENDOR" \
    --jobs="$(nproc)" \
    --workspace_path="${VENDOR_WORKSHOP}" \
    --snap_release="${VENDOR_WORKSHOP}/snap_release.xml" \
    --tree_type=vendor_techpack \
    --prop_opt=chipcode \
    --repo_url=git@git.codelinaro.org:/clo/tools/repo.git \
    --repo_branch=aosp-new/stable \
    --nhprop_chipcode_path="${STANDARD_OEM_DIR}"

repo sync -j1 --fail-fast

# Copy QSSI dir to VENDOR dir, excluding 'out' directory
rsync -a --progress --exclude='out/' \
    --exclude='.*/' --exclude='.*' \
    "${QSSI_WORKSHOP}/" "${VENDOR_WORKSHOP}/"


mkdir -p "${VENDOR_WORKSHOP}/kernel_platform"

# Copy kernel_platform directory to VENDOR dir
rsync -a --progress \
    "${KERNEL_DIR}/kernel_platform/" \
    "${VENDOR_WORKSHOP}/kernel_platform/"

mv "${VENDOR_WORKSHOP}/kernel_platform/out" "${VENDOR_WORKSHOP}/out"

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
cd "${VENDOR_WORKSHOP}"

python vendor/qcom/opensource/core-utils/build/build_image_standalone.py \
    --image super \
    --qssi_build_path "${QSSI_WORKSHOP}" \
    --target_build_path "${VENDOR_WORKSHOP}" \
    --merged_build_path "${VENDOR_WORKSHOP}" \
    --target_lunch niobe \
    --output_ota \
    --skip_qiifa

exit 0
