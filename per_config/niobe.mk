# /usr/local/google/home/alhinai/Desktop/hlos/matrix-la-1-0_ap_standard_oem/VENDOR_WORKSPACE/device/qcom/niobe/niobe.mk
TARGET_BOARD_PLATFORM := niobe
TARGET_BOOTLOADER_BOARD_NAME := niobe

BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_MISSING_REQUIRED_MODULES  := true
ALLOW_MISSING_DEPENDENCIES := true
RELAX_USES_LIBRARY_CHECK := true

#Flag to Enable 64 bit only configuration
TARGET_SUPPORTS_64_BIT_ONLY := true

TARGET_DEFINES_XR_CONFIGURATION := true

# Default Android A/B configuration
ENABLE_AB ?= true

# Enable virtual A/B
ENABLE_VIRTUAL_AB := true
# Enable virtual A/B compression
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_ramdisk.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/vabc_features.mk)
PRODUCT_VIRTUAL_AB_COMPRESSION_METHOD := lz4
PRODUCT_VENDOR_PROPERTIES += ro.virtual_ab.compression.threads=true

# Enable debugfs restrictions
PRODUCT_SET_DEBUGFS_RESTRICTIONS := true

# Set for XR targets
TARGET_USES_XR_CONFIG := true

#Enable vm support
TARGET_ENABLE_VM_SUPPORT := true

#Enable SMCI-Listeners.
TARGET_ENABLE_SMCI_SYSLISTENER := true

# Prebuilt vendor libraries
PRODUCT_PACKAGES += \
    libvideooptfeature \
    libcdsp_default_listener \
    libnative-api \
    libops \
    libtzdrmgenprov \
    libhdcp2p2prov \
    libqspm-mem-utils-vendor \
    libadsp_default_listener \
    libstandbyfeature \
    libqisl \
    libpsmoptfeature \
    libQSEEComAPI \
    libpasrutils \
    libadaptlaunch \
    libtaautoload \
    vendor.qti.hardware.embmssl@1.1 \
    libaodoptfeature \
    libhdcp1prov \
    libeai_fixed \
    libappclassifier \
    libGPreqcancel_svc \
    libGPTEE_vendor \
    libkeymasterdeviceutils \
    vendor.qti.qesdhal@1.2 \
    libsilkyscrolls \
    liblightninglaunches \
    libmeters-ns \
    libbase64 \
    liblowi_common \
    libspcom \
    libskewknob \
    libcpion \
    liblmthermallistner \
    vendor.qti.hardware.dpmservice@1.1 \
    libseclog \
    libqtikeymaster4 \
    vendor.qti.qesdhal@1.0 \
    libsysmon_cdsp_skel \
    libqesdk2_0 \
    libgpt \
    libgamepoweroptfeature \
    libGPMTEEC_vendor \
    vendor.qti.hardware.embmssl@1.0 \
    liblmutils-ns \
    libspukeymintprovision \
    vendor.qti.hardware.slmadapter@1.0 \
    liblowi_client \
    libGPreqcancel \
    libhdcpsrm \
    vendor.qti.qesdhal@1.3 \
    libqtikeymint \
    libtrustedapploader \
    libspukeymint \
    libkeymasterprovision \
    com.qualcomm.qti.dpm.api@1.0 \
    libdrmtime \
    vendor.qti.hardware.dpmservice@1.0 \
    vendor.qti.qesdhal@1.1 \
    libspukeymintdeviceutils \
    librpmb \
    libspl \
    liblowi_wifihal \
    vendor.qti.qspmhal-impl \
    libsubsystem_control \
    libssc_default_listener \
    vendor.qti.hardware.mwqemadapter@1.0 \
    libeai_float \
    libssd \
    libapengine \
    libqapesdk \
    libdrmfs \
    liboemcrypto \
    android.hardware.keymaster@4.1-service-qti

# Prebuilt vendor libraries
PRODUCT_PACKAGES += \
    libvideooptfeature \
    libcdsp_default_listener \
    libnative-api \
    libops \
    libtzdrmgenprov \
    libhdcp2p2prov \
    libqspm-mem-utils-vendor \
    libadsp_default_listener \
    libstandbyfeature \
    libqisl \
    libpsmoptfeature \
    libQSEEComAPI \
    libpasrutils \
    libadaptlaunch \
    libtaautoload \
    vendor.qti.hardware.embmssl@1.1 \
    libaodoptfeature \
    libhdcp1prov \
    libeai_fixed \
    libappclassifier \
    libGPreqcancel_svc \
    libGPTEE_vendor \
    libkeymasterdeviceutils \
    vendor.qti.qesdhal@1.2 \
    libsilkyscrolls \
    liblightninglaunches \
    libmeters-ns \
    libbase64 \
    liblowi_common \
    libspcom \
    libskewknob \
    libcpion \
    liblmthermallistner \
    vendor.qti.hardware.dpmservice@1.1 \
    libseclog \
    libqtikeymaster4 \
    vendor.qti.qesdhal@1.0 \
    libsysmon_cdsp_skel \
    libqesdk2_0 \
    libgpt \
    libgamepoweroptfeature \
    libGPMTEEC_vendor \
    vendor.qti.hardware.embmssl@1.0 \
    liblmutils-ns \
    libspukeymintprovision \
    vendor.qti.hardware.slmadapter@1.0 \
    liblowi_client \
    libGPreqcancel \
    libhdcpsrm \
    vendor.qti.qesdhal@1.3 \
    libqtikeymint \
    libtrustedapploader \
    libspukeymint \
    libkeymasterprovision \
    com.qualcomm.qti.dpm.api@1.0 \
    libdrmtime \
    vendor.qti.hardware.dpmservice@1.0 \
    vendor.qti.qesdhal@1.1 \
    libspukeymintdeviceutils \
    librpmb \
    libspl \
    liblowi_wifihal \
    vendor.qti.qspmhal-impl \
    libsubsystem_control \
    libssc_default_listener \
    vendor.qti.hardware.mwqemadapter@1.0 \
    libeai_float \
    libssd \
    libapengine \
    libqapesdk \
    libdrmfs \
    liboemcrypto 

# Prebuilt vendor libraries
PRODUCT_PACKAGES += \
    libvideooptfeature \
    libcdsp_default_listener \
    libnative-api \
    libops \
    libtzdrmgenprov \
    libhdcp2p2prov \
    libqspm-mem-utils-vendor \
    libadsp_default_listener \
    libstandbyfeature \
    libqisl \
    libpsmoptfeature \
    libQSEEComAPI \
    libpasrutils \
    libadaptlaunch \
    libtaautoload \
    vendor.qti.hardware.embmssl@1.1 \
    libaodoptfeature \
    libhdcp1prov \
    libeai_fixed \
    libappclassifier \
    libGPreqcancel_svc \
    libGPTEE_vendor \
    libkeymasterdeviceutils \
    vendor.qti.qesdhal@1.2 \
    libsilkyscrolls \
    liblightninglaunches \
    libmeters-ns \
    libbase64 \
    liblowi_common \
    libspcom \
    libskewknob \
    libcpion \
    liblmthermallistner \
    vendor.qti.hardware.dpmservice@1.1 \
    libseclog \
    libqtikeymaster4 \
    vendor.qti.qesdhal@1.0 \
    libsysmon_cdsp_skel \
    libqesdk2_0 \
    libgpt \
    libgamepoweroptfeature \
    libGPMTEEC_vendor \
    vendor.qti.hardware.embmssl@1.0 \
    liblmutils-ns \
    libspukeymintprovision \
    vendor.qti.hardware.slmadapter@1.0 \
    liblowi_client \
    libGPreqcancel \
    libhdcpsrm \
    vendor.qti.qesdhal@1.3 \
    libqtikeymint \
    libtrustedapploader \
    libspukeymint \
    libkeymasterprovision \
    com.qualcomm.qti.dpm.api@1.0 \
    libdrmtime \
    vendor.qti.hardware.dpmservice@1.0 \
    vendor.qti.qesdhal@1.1 \
    libspukeymintdeviceutils \
    librpmb \
    libspl \
    liblowi_wifihal \
    vendor.qti.qspmhal-impl \
    libsubsystem_control \
    libssc_default_listener \
    vendor.qti.hardware.mwqemadapter@1.0 \
    libeai_float \
    libssd \
    libapengine \
    libqapesdk \
    libdrmfs \
    liboemcrypto 

# Add library search path
TARGET_LD_LIBRARY_PATH += /vendor/lib64

# Vendor properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.gptee.enable=1 \
    vendor.gptee.enable=1 \
    vendor.gptee.service.enable=1

# true: earlycon and console enabled
# false: console explicitly disabled
# <empty>: default from kernel
TARGET_CONSOLE_ENABLED ?=

$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Set GRF/Vendor freeze properties
BOARD_SHIPPING_API_LEVEL := 34
BOARD_API_LEVEL := 34

# Opt out of 16K alignment changes
PRODUCT_MAX_PAGE_SIZE_SUPPORTED := 4096

# Set SoC manufacturer property
PRODUCT_PROPERTY_OVERRIDES += \
    ro.soc.manufacturer=QTI


# For QSSI builds, we should skip building the system image. Instead we build the
# "non-system" images (that we support).

PRODUCT_BUILD_SYSTEM_IMAGE := false
PRODUCT_BUILD_SYSTEM_OTHER_IMAGE := false
PRODUCT_BUILD_VENDOR_IMAGE := true
PRODUCT_BUILD_VENDOR_DLKM_IMAGE := true
PRODUCT_BUILD_PRODUCT_IMAGE := false
PRODUCT_BUILD_SYSTEM_EXT_IMAGE := false
PRODUCT_BUILD_ODM_IMAGE := false
ifeq ($(ENABLE_AB), true)
PRODUCT_BUILD_CACHE_IMAGE := false
else
PRODUCT_BUILD_CACHE_IMAGE := true
endif
PRODUCT_BUILD_RAMDISK_IMAGE := true
PRODUCT_BUILD_RECOVERY_IMAGE := true
PRODUCT_BUILD_USERDATA_IMAGE := true

# Also, since we're going to skip building the system image, we also skip
# building the OTA package. We'll build this at a later step.
TARGET_SKIP_OTA_PACKAGE := true

# Enable AVB 2.0
BOARD_AVB_ENABLE := true

# Disable verified boot checks in abl if AVB is not enabled
ifeq ($(BOARD_AVB_ENABLE), true)
BOARD_ABL_SIMPLE := false
else
BOARD_ABL_SIMPLE := true
endif

NEED_AIDL_NDK_PLATFORM_BACKEND := true

# Set SYSTEMEXT_SEPARATE_PARTITION_ENABLE if was not already set (set earlier via build.sh).
SYSTEMEXT_SEPARATE_PARTITION_ENABLE := true

###########
#QMAA flags starts
###########
#QMAA global flag for modular architecture
#true means QMAA is enabled for system
#false means QMAA is disabled for system

TARGET_USES_QMAA := false

#QMAA flag which is set to incorporate any generic dependencies
#required for the boot to UI flow in a QMAA enabled target.
#Set to false when all target level depenencies are met with
#actual full blown implementations.
TARGET_USES_QMAA_RECOMMENDED_BOOT_CONFIG := false

#QMAA tech team flag to override global QMAA per tech team
#true means overriding global QMAA for this tech area
#false means using global, no override
TARGET_USES_QMAA_OVERRIDE_RPMB := true
TARGET_USES_QMAA_OVERRIDE_GPT  := true
TARGET_USES_QMAA_OVERRIDE_DISPLAY := true
TARGET_USES_QMAA_OVERRIDE_AUDIO   := true
TARGET_USES_QMAA_OVERRIDE_VIDEO   := true
TARGET_USES_QMAA_OVERRIDE_CAMERA  := true
TARGET_USES_QMAA_OVERRIDE_GFX     := true
TARGET_USES_QMAA_OVERRIDE_WFD     := true
TARGET_USES_QMAA_OVERRIDE_GPS     := true
TARGET_USES_QMAA_OVERRIDE_ANDROID_RECOVERY := true
TARGET_USES_QMAA_OVERRIDE_ANDROID_CORE := true
TARGET_USES_QMAA_OVERRIDE_WLAN    := true
TARGET_USES_QMAA_OVERRIDE_BLUETOOTH   := true
TARGET_USES_QMAA_OVERRIDE_FM  := true
TARGET_USES_QMAA_OVERRIDE_CVP  := true
TARGET_USES_QMAA_OVERRIDE_FASTCV  := true
TARGET_USES_QMAA_OVERRIDE_SCVE  := true
TARGET_USES_QMAA_OVERRIDE_OPENVX  := true
TARGET_USES_QMAA_OVERRIDE_DATA := true
TARGET_USES_QMAA_OVERRIDE_DATA_NET := true
TARGET_USES_QMAA_OVERRIDE_MSM_BUS_MODULE := true
TARGET_USES_QMAA_OVERRIDE_KERNEL_TESTS_INTERNAL := true
TARGET_USES_QMAA_OVERRIDE_MSMIRQBALANCE := true
TARGET_USES_QMAA_OVERRIDE_DRM    := true
TARGET_USES_QMAA_OVERRIDE_KMGK := true
TARGET_USES_QMAA_OVERRIDE_MSMIRQBALANCE := true
TARGET_USES_QMAA_OVERRIDE_VPP := true
TARGET_USES_QMAA_OVERRIDE_GP := true
TARGET_USES_QMAA_OVERRIDE_BIOMETRICS := true
TARGET_USES_QMAA_OVERRIDE_PERF := true
TARGET_USES_QMAA_OVERRIDE_SENSORS := true
TARGET_USES_QMAA_OVERRIDE_SYNX := true
TARGET_USES_QMAA_OVERRIDE_SECUREMSM_TESTS := true
TARGET_USES_QMAA_OVERRIDE_SOTER := true
TARGET_USES_QMAA_OVERRIDE_REMOTE_EFS := true
TARGET_USES_QMAA_OVERRIDE_TFTP := true
TARGET_USES_QMAA_OVERRIDE_EID := true
TARGET_USES_QMAA_OVERRIDE_USB := true
TARGET_USES_QMAA_OVERRIDE_DPM := true
TARGET_USES_QMAA_OVERRIDE_DIAG := true
TARGET_USES_QMAA_OVERRIDE_FTM := true
TARGET_USES_QMAA_OVERRIDE_VIBRATOR := true
TARGET_USES_QMAA_OVERRIDE_FASTRPC := true
TARGET_USES_QMAA_OVERRIDE_SPU := true

#Full QMAA HAL List
QMAA_HAL_LIST := audio video camera display sensors gps gptee

ifeq ($(TARGET_USES_QMAA), true)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.confqmaa=true
endif

###########
#QMAA flags ends

#Suppot to compile recovery without msm headers
TARGET_HAS_GENERIC_KERNEL_HEADERS := true

CLEAN_UP_JAVA_IN_VENDOR ?= enforcing

JAVA_IN_VENDOR_SOONG_WHITE_LIST :=\
CuttlefishService\
pasrservice\
VendorPrivAppPermissionTest\

JAVA_IN_VENDOR_MAKE_WHITE_LIST :=\
AEye\
AON\
SnapdragonCamera\

SHIPPING_API_LEVEL := 34
PRODUCT_SHIPPING_API_LEVEL := 34

# Set kernel version and ion flags
TARGET_KERNEL_VERSION := 5.15
TARGET_USES_NEW_ION := true

# Disable DLKM generation until build support is available
TARGET_KERNEL_DLKM_DISABLE := false

# Tech specific flags
TARGET_KERNEL_DLKM_AUDIO_OVERRIDE := true
TARGET_KERNEL_DLKM_BT_OVERRIDE := true
TARGET_KERNEL_DLKM_CAMERA_OVERRIDE := true
TARGET_KERNEL_DLKM_NFC_OVERRIDE := true
TARGET_KERNEL_DLKM_ESE_OVERRIDE := true
TARGET_KERNEL_DLKM_DATA_OVERRIDE := true
TARGET_KERNEL_DLKM_DISPLAY_OVERRIDE := true
TARGET_KERNEL_DLKM_MM_DRV_OVERRIDE := true
TARGET_KERNEL_DLKM_SECURE_MSM_OVERRIDE := true
TARGET_KERNEL_DLKM_THERMAL_OVERRIDE := true
TARGET_KERNEL_DLKM_TOUCH_OVERRIDE := true
TARGET_KERNEL_DLKM_VIDEO_OVERRIDE := true
TARGET_KERNEL_DLKM_WLAN_OVERRIDE := true
TARGET_KERNEL_DLKM_MMRM_OVERRIDE := true
TARGET_KERNEL_DLKM_DATARMNET_OVERRIDE := true
TARGET_KERNEL_DLKM_DATARMNETEXT_OVERRIDE := true
TARGET_KERNEL_DLKM_SYNX_OVERRIDE := true
TARGET_KERNEL_DLKM_DATAIPA_OVERRIDE := true
TARGET_KERNEL_DLKM_FASTRPC_OVERRIDE := true
TARGET_KERNEL_DLKM_SPU_OVERRIDE := true

# Disable Telephony for xr targets
TARGET_NO_TELEPHONY := true

#####Dynamic partition Handling
###
#### Turning this flag to TRUE will enable dynamic partition/super image creation.
PRODUCT_BUILD_ODM_IMAGE := true
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_PACKAGES += fastbootd
# Add default implementation of fastboot AIDL.
PRODUCT_PACKAGES += android.hardware.fastboot-service.example_recovery

ifeq ($(ENABLE_AB),true)
ifeq ($(SYSTEMEXT_SEPARATE_PARTITION_ENABLE), true)
PRODUCT_COPY_FILES += $(LOCAL_PATH)/fstab.qcom:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.qcom
else
PRODUCT_COPY_FILES += $(LOCAL_PATH)/fstab_noSysext.qcom:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.qcom
endif
else
ifeq ($(SYSTEMEXT_SEPARATE_PARTITION_ENABLE), true)
PRODUCT_COPY_FILES += $(LOCAL_PATH)/fstab_non_AB.qcom:$(TARGET_COPY_OUT_RAMDISK)/fstab.qcom
else
PRODUCT_COPY_FILES += $(LOCAL_PATH)/fstab_non_AB_noSysext.qcom:$(TARGET_COPY_OUT_RAMDISK)/fstab.qcom
endif
endif
BOARD_AVB_VBMETA_SYSTEM := system
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 2

ifneq ("$(wildcard device/qcom/$(TARGET_BOARD_PLATFORM)-kernel/vendor_dlkm/system_dlkm.modules.blocklist)", "")
PRODUCT_COPY_FILES += device/qcom/$(TARGET_BOARD_PLATFORM)-kernel/vendor_dlkm/system_dlkm.modules.blocklist:$(TARGET_COPY_OUT_VENDOR_DLKM)/lib/modules/system_dlkm.modules.blocklist
endif

BOARD_HAVE_BLUETOOTH := false
BOARD_HAVE_QCOM_FM := false

# privapp-permissions whitelisting (To Fix CTS :privappPermissionsMustBeEnforced)
PRODUCT_PROPERTY_OVERRIDES += ro.control_privapp_permissions=enforce

TARGET_DEFINES_DALVIK_HEAP := true

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, device/qcom/vendor-common/common64.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

# [Alhinai] Include GPTEE vendor makefiles
$(call inherit-product-if-exists, vendor/qcom/proprietary/gptee/config/gptee_vendor.mk)

# beluga settings
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.beluga.p=0x3 \
    ro.vendor.beluga.c=0x4800 \
    ro.vendor.beluga.s=0x900 \
    ro.vendor.beluga.t=0x240

###########
# Target naming
PRODUCT_NAME := niobe
PRODUCT_DEVICE := niobe
PRODUCT_BRAND := qti
PRODUCT_MODEL := Niobe for arm64
#----------------------------------------------------------------------
# wlan specific
#----------------------------------------------------------------------
ifeq ($(TARGET_USES_QMAA), true)
ifneq ($(TARGET_USES_QMAA_OVERRIDE_WLAN), true)
include device/qcom/wlan/default/wlan.mk
else
include device/qcom/wlan/niobe/wlan.mk
endif
else
include device/qcom/wlan/niobe/wlan.mk
endif

#----------------------------------------------------------------------
# perf specific
#----------------------------------------------------------------------
ifeq ($(TARGET_USES_QMAA), true)
    ifneq ($(TARGET_USES_QMAA_OVERRIDE_PERF), true)
        TARGET_DISABLE_PERF_OPTIMIZATIONS := true
    else
        TARGET_DISABLE_PERF_OPTIMIZATIONS := false
    endif
else
    TARGET_DISABLE_PERF_OPTIMIZATIONS := false
endif
# /* Disable perf opts */



TARGET_USES_QCOM_BSP := false

# RRO configuration
TARGET_USES_RRO := true

TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

###########
# Target configurations

QCOM_BOARD_PLATFORMS += niobe

TARGET_USES_QSSI := true

###QMAA Indicator Start###

#Full QMAA HAL List
QMAA_HAL_LIST :=

#Indicator for each enabled QMAA HAL for this target. Each tech team locally verified their QMAA HAL and ensure code is updated/merged, then add their HAL module name to QMAA_ENABLED_HAL_MODULES as an QMAA enabling completion indicator
QMAA_ENABLED_HAL_MODULES :=
QMAA_ENABLED_HAL_MODULES += sensors

###QMAA Indicator End###

#Default vendor image configuration
ENABLE_VENDOR_IMAGE := true

# default is nosdcard, S/W button enabled in resource
PRODUCT_CHARACTERISTICS := nosdcard

BOARD_FRP_PARTITION_NAME := frp

# Android EGL implementation
PRODUCT_PACKAGES += libGLES_android

PRODUCT_PACKAGES += fs_config_files
PRODUCT_PACKAGES += gpio-keys.kl

# Keymaster packages

# Define keymaster paths
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore_desede=true \
    ro.hardware.keystore=qcom


ifeq ($(ENABLE_AB), true)
# A/B related packages

PRODUCT_HOST_PACKAGES += \
    brillo_update_payload

# Boot control HAL test app
PRODUCT_PACKAGES_DEBUG += bootctl

endif

# Enable incremental fs
PRODUCT_PROPERTY_OVERRIDES += \
    ro.incremental.enable=yes

PRODUCT_HOST_PACKAGES += \
    configstore_xmlparser

ifneq (,$(wildcard $(QCPATH)/vsdk-tools))
PRODUCT_HOST_PACKAGES += \
    install_vsdk_py2
PRODUCT_HOST_PACKAGES += \
    install_vsdk_py3
PRODUCT_HOST_PACKAGES += \
    vsdk-metadata
endif

# QRTR related packages
PRODUCT_PACKAGES += qrtr-ns
PRODUCT_PACKAGES += qrtr-lookup
PRODUCT_PACKAGES += libqrtr

# diag-router
TARGET_HAS_DIAG_ROUTER := true

# f2fs utilities

# Userdata checkpoint

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    FILESYSTEM_TYPE_vendor=ext4 \
    POSTINSTALL_OPTIONAL_vendor=true

# Macro allows Camera module to use new service
QTI_CAMERA_PROVIDER_SERVICE := 2.7
QTI_CAMERA_AON_SERVICE := 1.2

DEVICE_FRAMEWORK_MANIFEST_FILE := device/qcom/niobe/framework_manifest.xml

# Enable compilation of image_generation_tool
TARGET_USES_IMAGE_GEN_TOOL := true

DEVICE_MANIFEST_FILE := device/qcom/niobe/manifest.xml

DEVICE_MATRIX_FILE   := device/qcom/common/compatibility_matrix.xml


#Audio DLKM
#AUDIO_DLKM := audio_apr.ko
#AUDIO_DLKM += audio_q6_pdr.ko
#AUDIO_DLKM += audio_q6_notifier.ko
#AUDIO_DLKM += audio_adsp_loader.ko
#AUDIO_DLKM += audio_q6.ko
#AUDIO_DLKM += audio_usf.ko
#AUDIO_DLKM += audio_pinctrl_wcd.ko
#AUDIO_DLKM += audio_swr.ko
#AUDIO_DLKM += audio_wcd_core.ko
#AUDIO_DLKM += audio_swr_ctrl.ko
#AUDIO_DLKM += audio_wsa881x.ko
#AUDIO_DLKM += audio_platform.ko
#AUDIO_DLKM += audio_hdmi.ko
#AUDIO_DLKM += audio_stub.ko
#AUDIO_DLKM += audio_wcd9xxx.ko
#AUDIO_DLKM += audio_mbhc.ko
#AUDIO_DLKM += audio_native.ko
#AUDIO_DLKM += audio_wcd938x.ko
#AUDIO_DLKM += audio_wcd938x_slave.ko
#AUDIO_DLKM += audio_bolero_cdc.ko
#AUDIO_DLKM += audio_wsa_macro.ko
#AUDIO_DLKM += audio_va_macro.ko
#AUDIO_DLKM += audio_rx_macro.ko
#AUDIO_DLKM += audio_tx_macro.ko
#AUDIO_DLKM += audio_machine_lahaina.ko
#AUDIO_DLKM += audio_snd_event.ko

PRODUCT_PACKAGES += $(AUDIO_DLKM)

# Kernel modules install path
KERNEL_MODULES_INSTALL := dlkm
KERNEL_MODULES_OUT := out/target/product/$(PRODUCT_NAME)/$(KERNEL_MODULES_INSTALL)/lib/modules



USE_LIB_PROCESS_GROUP := true

# MIDI feature
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml

# Dumpstate Feature Flag
PRODUCT_ENABLE_DUMPSTATE_SUPPORT := true

#Enable full treble flag
PRODUCT_FULL_TREBLE_OVERRIDE := true
PRODUCT_VENDOR_MOVE_ENABLED := true
PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE := true
BOARD_SYSTEMSDK_VERSIONS := 34

ifeq (true,$(BUILDING_WITH_VSDK))
    ALLOW_MISSING_DEPENDENCIES := true
    TARGET_SKIP_CURRENT_VNDK := true
    -include vendor/qcom/vsdk_snapshots_config/config.mk
else
    BOARD_VNDK_VERSION := current
    RECOVERY_SNAPSHOT_VERSION := current
    RAMDISK_SNAPSHOT_VERSION := current
endif

$(warning "BOARD_VNDK_VERSION = $(BOARD_VNDK_VERSION), RECOVERY_SNAPSHOT_VERSION=$(RECOVERY_SNAPSHOT_VERSION), RAMDISK_SNAPSHOT_VERSION=$(RAMDISK_SNAPSHOT_VERSION)")

TARGET_MOUNT_POINTS_SYMLINKS := false

# Fingerprint feature
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml \

# system prop for enabling QFS (QTI Fingerprint Solution)
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.qfp=true
#target specific runtime prop for qspm
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qspm.enable=true
#ANT+ stack

#FEATURE_OPENGLES_EXTENSION_PACK support string config file
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml

#Charger
ifeq ($(ENABLE_AB),true)
PRODUCT_COPY_FILES += $(LOCAL_PATH)/charger_fw_fstab.qti:$(TARGET_COPY_OUT_VENDOR)/etc/charger_fw_fstab.qti
else
PRODUCT_COPY_FILES += $(LOCAL_PATH)/charger_fw_fstab_non_AB.qti:$(TARGET_COPY_OUT_VENDOR)/etc/charger_fw_fstab.qti
endif

PRODUCT_BOOT_JARS += tcmiface
PRODUCT_BOOT_JARS += telephony-ext
PRODUCT_PACKAGES += telephony-ext
ifeq ($(TARGET_USES_QMAA), true)
ifneq ($(TARGET_USES_QMAA_OVERRIDE_ANDROID_CORE),true)
PRODUCT_ENABLE_QESDK := false
else
PRODUCT_ENABLE_QESDK := false
endif
else
PRODUCT_ENABLE_QESDK := false
endif

# Vendor property to enable advanced network scanning
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.radio.enableadvancedscan=true

# Enable Fuse Passthrough
PRODUCT_PROPERTY_OVERRIDES += persist.sys.fuse.passthrough.enable=true

# ODM ueventd.rc
# - only for use with VM support right now
ifeq ($(TARGET_ENABLE_VM_SUPPORT),true)
PRODUCT_COPY_FILES += $(LOCAL_PATH)/ueventd-odm.rc:$(TARGET_COPY_OUT_ODM)/etc/ueventd.rc
PRODUCT_PACKAGES += vmmgr vmmgr.rc vmmgr.conf
endif


##Armv9-Tests##
##Armv9-Tests##

# Mediaserver 64 Bit enable
PRODUCT_PROPERTY_OVERRIDES += \
     ro.mediaserver.64b.enable=true

# Enable support for APEX updates
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# [Alhinai] GPTEE SELinux policies
BOARD_VENDOR_SEPOLICY_DIRS += \
    device/qcom/sepolicy_vndr/generic/vendor/common/gptee


###################################################################################
# This is the End of target.mk file.
# Now, Pickup other split product.mk files:
###################################################################################
# TODO: Relocate the system product.mk files pickup into qssi lunch, once it is up.
$(foreach sdefs, $(sort $(wildcard vendor/qcom/defs/product-defs/system/*.mk)), \
    $(call inherit-product, $(sdefs)))
$(foreach vdefs, $(sort $(wildcard vendor/qcom/defs/product-defs/vendor/*.mk)), \
    $(call inherit-product, $(vdefs)))
###################################################################################
