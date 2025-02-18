#!/bin/bash

# =============================================================================
# Environment Setup
# =============================================================================

# Set up build environment paths
STANDARD_OEM_DIR="${PWD}/matrix-la-1-0_ap_standard_oem"
FIX_DUPLICATE_SCRIPT="${PWD}/fix_duplicate_modules.py"

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

# =============================================================================
# Download HLOS Chipcode
# =============================================================================
git clone --depth 1 https://qpm-git.qualcomm.com/home2/git/google-inc/matrix-la-1-0_ap_standard_oem.git
cd "${STANDARD_OEM_DIR}"

# Set up sync script path
chmod +x "$SYNC_SCRIPT"

# =============================================================================
# Build HLOS
# =============================================================================

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

mkdir -p vendor/qcom/defs

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

# Run fix_duplicate_modules script
python3 FIX_DUPLICATE_SCRIPT

source build/envsetup.sh
lunch qssi_xrM-userdebug
make clean
bash build.sh -j128 dist --qssi_only EXPERIMENTAL_USE_OPENJDK9=1.8

# Restore git config
git config --global url.git@git.codelinaro.org:.insteadOf https://git.codelinaro.org/

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

# Clean and prepare directories
rm -rf "${VENDOR_DIR}/out" "${VENDOR_DIR}/kernel_platform"
mkdir -p "${VENDOR_DIR}/out" "${VENDOR_DIR}/device/qcom/niobe-kernel"

# Copy required files
cp -r "${QSSI_DIR}"/* "${VENDOR_DIR}/"
cp -r "${KERNEL_DIR}/kernel_platform" "${VENDOR_DIR}/"

# Create necessary directories
mkdir -p "${VENDOR_DIR}/out/target/product/niobe/"{obj,vendor,tmp}
mkdir -p "${VENDOR_DIR}/out/dist"
mkdir -p "${VENDOR_DIR}/out/host/linux-x86"

# Copy kernel artifacts and create symlinks
cp -r "${KERNEL_DIR}/kernel_platform/out"/* "${VENDOR_DIR}/out/"
ln -sf "${QSSI_DIR}/out/host" "${VENDOR_DIR}/out/"

# Clean conflicting modules
rm -rf "${VENDOR_DIR}/external/boringssl"
rm -rf "${VENDOR_DIR}/prebuilts/clang/host/linux-x86/soong"

# Copy Android.mk
cp "${VENDOR_DIR}/LINUX/android/vendor/qcom/proprietary/prebuilt_HY11/Android.mk" \
    "${VENDOR_DIR}/vendor/qcom/proprietary/prebuilt_HY11/Android.mk"

# Build Vendor
source build/envsetup.sh
lunch niobe-userdebug
./kernel_platform/build/android/prepare_vendor.sh niobe gki
bash build.sh dist --target_only

# =============================================================================
# Generate super.img
# =============================================================================
python vendor/qcom/opensource/core-utils/build/build_image_standalone.py \
    --image super \
    --qssi_build_path "${QSSI_DIR}" \
    --target_build_path "${VENDOR_DIR}" \
    --merged_build_path "${VENDOR_DIR}" \
    --target_lunch niobe \
    --output_ota \
    --skip_qiifa

exit 0
