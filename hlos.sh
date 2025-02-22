#!/bin/bash

# =======================================
# Environment Setup
# =======================================

setup_environment() {
    # Set up build environment paths
    STANDARD_OEM_DIR="${PWD}/matrix-la-1-0_ap_standard_oem"
    
    REQUIRED_MODULES_SCRIPT="generate_prebuilts.sh"
    REQUIRED_MODULES_DIR="${PWD}/${REQUIRED_MODULES_SCRIPT}"
    
    KERNEL_DIR="${STANDARD_OEM_DIR}/KERNEL.PLATFORM.3.0.r13"
    QSSI_DIR="${STANDARD_OEM_DIR}/LA.QSSI.14.0.r1"
    VENDOR_DIR="${STANDARD_OEM_DIR}/LA.VENDOR.14.3.3.r1"
    
    SYNC_SCRIPT_KERNEL="${KERNEL_DIR}/kernel_platform/sync_snap_v2.sh"
    SYNC_SCRIPT_QSSI="${QSSI_DIR}/LINUX/android/sync_snap_v2.sh"
    SYNC_SCRIPT_VENDOR="${VENDOR_DIR}/LINUX/android/sync_snap_v2.sh"
    
    KERNEL_WORKSHOP="${STANDARD_OEM_DIR}/AA1_KERNEL"
    QSSI_WORKSHOP="${STANDARD_OEM_DIR}/AA2_QSSI"
    VENDOR_WORKSHOP="${STANDARD_OEM_DIR}/AA3_VENDOR"

    # Configure git
    git config --global http.followRedirects true
    git config --global pack.threads "$(nproc)"
    git config --global url.git@git.codelinaro.org:.insteadOf https://git.codelinaro.org/

    # Set git user info
    git config --global user.name "Your Name"
    git config --global user.email "your.email@example.com"
}

# =======================================
# Download HLOS Chipcode
# =======================================

download_hlos() {

    # Check if directory already exists
    if [ ! -d "matrix-la-1-0_ap_standard_oem" ]; then
        echo "Downloading HLOS Chipcode..."
        git clone --depth 1 https://qpm-git.qualcomm.com/home2/git/google-inc/matrix-la-1-0_ap_standard_oem.git
    fi

    # Make sync scripts executable
    chmod +x "$SYNC_SCRIPT_KERNEL"
    chmod +x "$SYNC_SCRIPT_QSSI"
    chmod +x "$SYNC_SCRIPT_VENDOR"

    mkdir -p "$KERNEL_WORKSHOP"
    mkdir -p "$QSSI_WORKSHOP"
    mkdir -p "$VENDOR_WORKSHOP"

}

# =======================================
# Kernel Functions
# =======================================

sync_kernel() {
    cd "${KERNEL_WORKSHOP}"
    
    echo "Syncing Kernel..."
    "$SYNC_SCRIPT_KERNEL" \
        --jobs="$(nproc)" \
        --workspace_path="${KERNEL_WORKSHOP}" \
        --snap_release="${KERNEL_DIR}/kernel_platform/snap_release.xml" \
        --tree_type=KERNEL.PLATFORM.3.0.r13 \
        --prop_opt=chipcode \
        --repo_url=git@git.codelinaro.org:/clo/tools/repo.git \
        --repo_branch=aosp-new/stable \
        --nhprop_chipcode_path="${STANDARD_OEM_DIR}"

    repo sync -j1 --fail-fast
}

build_kernel() {
    cd "${KERNEL_WORKSHOP}"
    bash kernel_platform/qcom/proprietary/prebuilt_HY11/vendorsetup.sh

    export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"
    export PATH=$JAVA_HOME/bin:$PATH

    ./kernel_platform/build_with_bazel.py -t qssi_xrM ALL
}

# =======================================
# QSSI Functions
# =======================================

sync_qssi() {
    git config --global --unset url.git@git.codelinaro.org:.insteadOf
    cd "${QSSI_WORKSHOP}"
    
    "$SYNC_SCRIPT_QSSI" \
        --jobs="$(nproc)" \
        --workspace_path="${QSSI_WORKSHOP}" \
        --snap_release="${QSSI_DIR}/LINUX/android/snap_release.xml" \
        --tree_type=LA.QSSI.14.0.r1 \
        --prop_opt=chipcode \
        --repo_url=https://git.codelinaro.org/clo/tools/repo.git \
        --repo_branch=aosp-new/stable \
        --nhprop_chipcode_path="${STANDARD_OEM_DIR}"

    repo sync -j1 --fail-fast
    git config --global url.git@git.codelinaro.org:.insteadOf https://git.codelinaro.org/    
}

build_qssi() {
    git config --global --unset url.git@git.codelinaro.org:.insteadOf
    cd "${QSSI_WORKSHOP}"

#     rsync -a --progress "${QSSI_DIR}/LINUX/android/vendor/" "${QSSI_DIR}/vendor/"

    source build/envsetup.sh
    lunch qssi_xrM-userdebug

    bash build.sh -j"$(nproc)" dist --qssi_only EXPERIMENTAL_USE_OPENJDK9=1.8

    # Restore git config
    git config --global url.git@git.codelinaro.org:.insteadOf https://git.codelinaro.org/
}

# =======================================
# Vendor Functions
# =======================================

sync_vendor() {
    cd "${VENDOR_WORKSHOP}"
    
    "$SYNC_SCRIPT_VENDOR" \
        --jobs="$(nproc)" \
        --workspace_path="${VENDOR_WORKSHOP}" \
        --snap_release="${VENDOR_DIR}/LINUX/android/snap_release.xml" \
        --tree_type=vendor_techpack \
        --prop_opt=chipcode \
        --repo_url=git@git.codelinaro.org:/clo/tools/repo.git \
        --repo_branch=aosp-new/stable \
        --nhprop_chipcode_path="${STANDARD_OEM_DIR}"

    repo sync -j1 --fail-fast
    
}

build_vendor() {
    source build/envsetup.sh
    lunch qssi_xrM-userdebug

    ./kernel_platform/build/android/prepare_vendor.sh qssi_xrM
    bash build.sh -j"$(nproc)" dist --target_only BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
}

# =======================================
# Generate super.img
# =======================================

generate_super_image() {
    cd "${VENDOR_WORKSHOP}"
    
    python vendor/qcom/opensource/core-utils/build/build_image_standalone.py \
        --image super \
        --qssi_build_path "${QSSI_WORKSHOP}" \
        --target_build_path "${VENDOR_WORKSHOP}" \
        --merged_build_path "${VENDOR_WORKSHOP}" \
        --target_lunch qssi_xrM \
        --output_ota \
        --skip_qiifa
}

# =======================================
# Main Function
# =======================================

main() {

    # 1. Setup environment
    setup_environment
    
    # 2. Download HLOS
    download_hlos

    # 3. Kernel: sync and build
    sync_kernel
    build_kernel
    
    # 4. QSSI: sync and build
    sync_qssi
    build_qssi
    
    # 5. Vendor: sync and build
    sync_vendor && build_vendor
    
    # 6. Generate image
    generate_super_image
}

# Execute main function
main
