#!/bin/bash

# =======================================
# Environment Setup
# =======================================

STANDARD_OEM_DIR="${PWD}/matrix-la-1-0_ap_standard_oem"

KERNEL_DIR="${STANDARD_OEM_DIR}/KERNEL.PLATFORM.3.0.r13"
QSSI_DIR="${STANDARD_OEM_DIR}/LA.QSSI.14.0.r1"
VENDOR_DIR="${STANDARD_OEM_DIR}/LA.VENDOR.14.3.3.r1"

SYNC_SCRIPT_KERNEL="${KERNEL_DIR}/kernel_platform/sync_snap_v2.sh"
SYNC_SCRIPT_QSSI="${QSSI_DIR}/LINUX/android/sync_snap_v2.sh"
SYNC_SCRIPT_VENDOR="${VENDOR_DIR}/LINUX/android/sync_snap_v2.sh"

KERNEL_WORKSHOP="${STANDARD_OEM_DIR}/KERNEL_WORKSPACE"
QSSI_WORKSHOP="${STANDARD_OEM_DIR}/QSSI_WORKSPACE"
VENDOR_WORKSHOP="${STANDARD_OEM_DIR}/VENDOR_WORKSPACE"

# Configure git
git config --global http.followRedirects true
git config --global pack.threads "$(nproc)"
git config --global url.git@git.codelinaro.org:.insteadOf https://git.codelinaro.org/

# Set git user info
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"


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

    ./kernel_platform/build_with_bazel.py -t niobe ALL
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
    cd "${QSSI_WORKSHOP}"

    source build/envsetup.sh
    lunch qssi_xrM-userdebug

    mkdir -p ${QSSI_WORKSHOP}/vendor
    cp -r ${QSSI_DIR}/vendor/* ${QSSI_WORKSHOP}/vendor/

    bash build.sh -j"$(nproc)" dist --qssi_only EXPERIMENTAL_USE_OPENJDK9=1.8
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

copy_files_vendor() {
    
    # Copy QSSI dir contents to VENDOR dir
    cp -r "${QSSI_WORKSHOP}/"* "${VENDOR_WORKSHOP}/"
    rm -rf "${VENDOR_WORKSHOP}/out"
    
    cp -r "${KERNEL_WORKSHOP}/kernel_platform/" "${VENDOR_WORKSHOP}/"
    rm -rf "${VENDOR_WORKSHOP}/kernel_platform/out"
    
    mkdir -p "${VENDOR_WORKSHOP}/out"
    cp -r "${KERNEL_DIR}/kernel_platform/out/"* "${VENDOR_WORKSHOP}/out/"
    
    # Copy Android.mk file
    cp "${VENDOR_DIR}/LINUX/android/vendor/qcom/proprietary/prebuilt_HY11/Android.mk" \
    "${VENDOR_WORKSHOP}/vendor/qcom/proprietary/prebuilt_HY11/Android.mk"

}

collect_vendor_dirs() {
    echo "Finding and merging all vendor directories..."
    
    # Destination directory
    DEST_DIR="${VENDOR_WORKSHOP}/vendor"
    
    # Make sure destination directory exists
    mkdir -p "$DEST_DIR"
    
    # Find all directories with the target path
    FOUND=0
    
    cd "${STANDARD_OEM_DIR}"
    for DIR in */; do
        SOURCE_VENDOR_DIR="${STANDARD_OEM_DIR}/${DIR}LINUX/android/vendor"
        if [ -d "$SOURCE_VENDOR_DIR" ]; then
            FOUND=$((FOUND + 1))
            
            # Use rsync to merge directories without overwriting existing files
            rsync -a --ignore-existing "${SOURCE_VENDOR_DIR}/" "$DEST_DIR/"
            
            # Output progress
            echo "Merged contents from ${DIR}LINUX/android/vendor/"
        fi
    done
    
    echo "Found and processed $FOUND directories"
    echo "Merge operation completed. All contents merged into $DEST_DIR"
    
    # Return to original directory
    cd "${STANDARD_OEM_DIR}"
}

build_vendor() {
    cd "${VENDOR_WORKSHOP}"
    
    source build/envsetup.sh
    lunch niobe-userdebug

    ./kernel_platform/build/android/prepare_vendor.sh niobe consolidate

    exit 0
    
    bash build.sh -j"$(nproc)" dist --target_only
    # BUILD_BROKEN_MISSING_REQUIRED_MODULES=true \
    # BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES=true \
    # ALLOW_MISSING_DEPENDENCIES=true \
    # TARGET_USES_QCOM_GPTEE=false
}


# =======================================
# Generate super.img
# =======================================

generate_super_image() {
    cd "${VENDOR_WORKSHOP}"
    
    source build/envsetup.sh
    lunch niobe-userdebug
    ./kernel_platform/build/android/prepare_vendor.sh niobe gki

    python vendor/qcom/opensource/core-utils/build/build_image_standalone.py \
        --image super \
        --qssi_build_path "${QSSI_WORKSHOP}" \
        --target_build_path "${VENDOR_WORKSHOP}" \
        --merged_build_path "${VENDOR_WORKSHOP}" \
        --target_lunch niobe \
        --output_ota
}

# =======================================
# Main Function
# =======================================

main() {
    
    # 1. Download HLOS
    download_hlos

    # 2. Kernel: sync and build
    sync_kernel
    sync_kernel
    build_kernel
    
    # 3. QSSI: sync and build
    sync_qssi
    sync_qssi
    build_qssi
    
    # 4. Vendor: sync, copy files and build
    sync_vendor
    sync_vendor
    copy_files_vendor
    
    # 5. Collect all vendor directories before building vendor
    collect_vendor_dirs
    
    cd "${STANDARD_OEM_DIR}"
    tar -cf - "${STANDARD_OEM_DIR}" | pigz -9 -p 128 > standard_oem.tar.gz
    
    build_vendor
    
    exit 0
    
    # # 6. Generate image
    # generate_super_image
}

main
