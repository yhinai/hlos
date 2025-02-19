#!/bin/bash

# Paths
NIOBE_MK="device/qcom/niobe/niobe.mk"
PREBUILT_DIR="vendor/qcom/proprietary/prebuilt_HY11/target/product/niobe/vendor/lib64"
ANDROID_BP="vendor/qcom/proprietary/prebuilt_HY11/Android.bp"
TEMP_FILE="niobe.mk.temp"

echo "Starting library processing..."

# List of already defined modules
EXISTING_MODULES=(
    "libqcbor" "libadsprpc" "libcdsprpc" "libmdsprpc" "libos" 
    "libperipheral_client" "libqti-qesdk-secure" "libsdsprpc"
    "libsynx" "libthreadutils" "libvmmem"
    # Add other existing modules here
)

# Initialize Android.bp
echo "// Auto-generated Android.bp file" > $ANDROID_BP

# Initialize PRODUCT_PACKAGES list
LIBS_STRING=""
NEW_MODULES=0

# Process .so files
for lib in $(find $PREBUILT_DIR -name "*.so"); do
    libname=$(basename $lib .so)
    
    # Skip existing modules
    printf '%s\n' "${EXISTING_MODULES[@]}" | grep -q "^${libname}$" && continue
    
    # Check if library exists
    if [ -f "$PREBUILT_DIR/$libname.so" ]; then
        # Add to PRODUCT_PACKAGES with proper line continuation
        if [ -z "$LIBS_STRING" ]; then
            LIBS_STRING+="# Prebuilt vendor libraries\nPRODUCT_PACKAGES += \\\\"
        fi
        LIBS_STRING+="\n    ${libname} \\\\"
        
        # Add to Android.bp with check_elf_files: false
        echo " cc_prebuilt_library_shared {
    name: \"$libname\",
    owner: \"qcom\",
    strip: { none: true },
    target: { android_arm64: { srcs: [\"target/product/niobe/vendor/lib64/$libname.so\"] } },
    compile_multilib: \"64\",
    prefer: true,
    soc_specific: true,
    vendor: true,
    check_elf_files: false,
}" >> $ANDROID_BP
        
        NEW_MODULES=$((NEW_MODULES + 1))
    else
        echo "Warning: Library $libname.so is missing."
    fi
done

# Remove trailing backslash if entries exist
if [ -n "$LIBS_STRING" ]; then
    LIBS_STRING="${LIBS_STRING%\\\\}\n"
fi

# Remove duplicates
LIBS_STRING=$(echo "$LIBS_STRING" | sort -u)

# Update niobe.mk if new modules found
if [ $NEW_MODULES -gt 0 ]; then
    # Replace existing broken PRODUCT_PACKAGES blocks
    awk -v libs="$LIBS_STRING" '
    BEGIN { in_block=0; replaced=0 }
    /^PRODUCT_PACKAGES.*\\$/ { in_block=1; next }
    in_block && /[^\\]$/ { in_block=0; if (!replaced) print libs; replaced=1; next }
    /^# Prebuilt vendor libraries/ {
        while (getline && $0 ~ /PRODUCT_PACKAGES|\\/) {}
        print libs
        replaced=1
    }
    { if (!in_block) print }
    ' "$NIOBE_MK" > "$TEMP_FILE"
    
    mv "$TEMP_FILE" "$NIOBE_MK"
    echo "Updated niobe.mk with $NEW_MODULES new modules"
else
    echo "No new modules to add"
fi

echo "Processing complete! Added $NEW_MODULES modules."
