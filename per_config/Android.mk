# /usr/local/google/home/alhinai/hlos/matrix-la-1-0_ap_standard_oem/LA.VENDOR.14.3.3.r1/LINUX/android/vendor/qcom/proprietary/prebuilt_HY11/target/product/niobe/

PREBUILT_PATH := $(call my-dir)
LOCAL_PATH := $(PREBUILT_PATH)
-include $(LOCAL_PATH)/interface_modules.mk

include $(CLEAR_VARS)
LOCAL_MODULE := libdrmMinimalfs
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_SUFFIX := .a
LOCAL_SRC_FILES := ../../../../target/product/niobe/obj/STATIC_LIBRARIES/libdrmMinimalfs_intermediates/libdrmMinimalfs.a
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libgptStatic
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_SUFFIX := .a
LOCAL_SRC_FILES := ../../../../target/product/niobe/obj/STATIC_LIBRARIES/libgptStatic_intermediates/libgptStatic.a
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libqsappsver
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_SUFFIX := .a
LOCAL_SRC_FILES := ../../../../target/product/niobe/obj/STATIC_LIBRARIES/libqsappsver_intermediates/libqsappsver.a
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libQSEEComAPIStatic
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_SUFFIX := .a
LOCAL_SRC_FILES := ../../../../target/product/niobe/obj/STATIC_LIBRARIES/libQSEEComAPIStatic_intermediates/libQSEEComAPIStatic.a
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := librpmbStatic
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_SUFFIX := .a
LOCAL_SRC_FILES := ../../../../target/product/niobe/obj/STATIC_LIBRARIES/librpmbStatic_intermediates/librpmbStatic.a
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libssdStatic
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_SUFFIX := .a
LOCAL_SRC_FILES := ../../../../target/product/niobe/obj/STATIC_LIBRARIES/libssdStatic_intermediates/libssdStatic.a
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := TrustZoneAccessService
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_SUFFIX := .apk
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/app/TrustZoneAccessService/TrustZoneAccessService.apk
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/app
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := adsprpcd
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := liblog libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/adsprpcd
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := cdsprpcd
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := liblog libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/cdsprpcd
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := dspservice
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := libhidlbase libhardware libutils libcutils liblog libavservices_minijail vendor.qti.hardware.dsp@1.0 libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/dspservice
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := hdcp1prov
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := libdiag liblog libhdcp1prov libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/hdcp1prov
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := hdcp2p2prov
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := libdiag liblog libhdcp2p2prov libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/hdcp2p2prov
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.dumpstate-service.qti
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := libbase libbinder_ndk libcutils libdumpstateutil liblog libutils android.hardware.dumpstate-V1-ndk libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/hw/android.hardware.dumpstate-service.qti
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin/hw
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.gatekeeper-service-qti
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := libqtigatekeeper libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/hw/android.hardware.gatekeeper-service-qti
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin/hw
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.gatekeeper-service-spu-qti
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := libspuqtigatekeeper libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/hw/android.hardware.gatekeeper-service-spu-qti
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin/hw
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.keymaster@4.0-service-qti
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := liblog libcutils libbase libutils libhardware libhidlbase android.hardware.keymaster@4.0 libqtikeymaster4 libcrypto libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/hw/android.hardware.keymaster@4.0-service-qti
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin/hw
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.security.keymint-service-qti
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := liblog libcutils libbase libutils libhardware libbinder_ndk libhidlbase android.hardware.keymaster@4.0 libqtikeymint libcrypto android.hardware.security.keymint-V3-ndk android.hardware.security.rkp-V3-ndk android.hardware.security.secureclock-V1-ndk android.hardware.security.sharedsecret-V1-ndk libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/hw/android.hardware.security.keymint-service-qti
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin/hw
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.security.keymint-service-spu-qti
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := liblog libcutils libbase libutils libhardware libbinder_ndk libhidlbase libspukeymint libcrypto libspukeymintutils android.hardware.security.keymint-V3-ndk android.hardware.security.rkp-V3-ndk android.hardware.security.secureclock-V1-ndk android.hardware.security.sharedsecret-V2-ndk libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/hw/android.hardware.security.keymint-service-spu-qti
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin/hw
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.qseecom@1.0-service
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := liblog libbase libutils libbinder_ndk libdmabufheap libQSEEComAPI vendor.qti.hardware.qseecom-V1-ndk vendor.qti.hardware.qseecom@1.0-impl libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/hw/vendor.qti.hardware.qseecom@1.0-service
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin/hw
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.soter-service
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := liblog libbase libutils libbinder_ndk vendor.qti.hardware.soter-V1-ndk vendor.qti.hardware.soter-impl libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/hw/vendor.qti.hardware.soter-service
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin/hw
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.spu-service
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := liblog libutils vendor.qti.hardware.spu-V2-ndk android.hardware.common-V2-ndk libcutils libspcom libqti-utils libbinder libbase libbinder_ndk libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/hw/vendor.qti.hardware.spu-service
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin/hw
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.memory.pasrmanager-service
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := libcutils libutils liblog libhardware_legacy libbase libhardware libpasrutils vendor.qti.memory.pasrmanager-V1-ndk vendor.qti.memory.pasrmanager-impl libbinder_ndk libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/hw/vendor.qti.memory.pasrmanager-service
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin/hw
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.psiclient@1.0-service
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := libcutils libutils liblog libbinder_ndk libbase libhardware libhidlbase libpsi libpasrutils vendor.qti.memory.pasrmanager-V1-ndk vendor.qti.memory.pasrmanager@1.0 vendor.qti.memory.pasrmanager@1.1 android.hidl.allocator@1.0 android.hidl.memory@1.0 libhidlmemory libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/hw/vendor.qti.psiclient@1.0-service
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin/hw
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.spu@1.1-service
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := libhidlbase libutils libcutils liblog libspcom libqti-utils libhidlmemory vendor.qti.spu@1.0 vendor.qti.spu@1.1 libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/hw/vendor.qti.spu@1.1-service
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin/hw
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.spu@2.0-service
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := libhidlbase libutils libcutils liblog libspcom libqti-utils libhidlmemory vendor.qti.spu@2.0 libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/hw/vendor.qti.spu@2.0-service
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin/hw
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ks
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := libc libcutils libutils liblog libc++ libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/ks
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := lowi-server
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := libcutils libgps.utils libloc_base_util libloc_mq_client liblog libnl libwpa_client liblowi_common libqmi_cci libqmi_common_so libdiag libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/lowi-server
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := lowi_test
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := libcutils liblog liblowi_client libxml2 libgps.utils libloc_base_util libloc_mq_client liblowi_common libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/lowi_test
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := pm_ioctl_app
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := libc liblog libcutils libc++ libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/pm_ioctl_app
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := pm-proxy
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := libperipheral_client libcutils liblog libmdmdetect libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/pm-proxy
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := pm-service
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := libcutils libutils liblog libbinder libqmi_cci libqmi_common_so libqmi_encdec libqmi_csi libmdmdetect libperipheral_client libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/pm-service
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := qcom-system-daemon
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := libcutils libutils liblog libdiag libsubsystem_control libavservices_minijail libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/qcom-system-daemon
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := qdss_qmi_helper
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := libqmi_cci libqmi_common_so libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/qdss_qmi_helper
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := qguard
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := libbase libcutils liblog libjsoncpp libprocessgroup libutils libbinder libbinder_ndk libui libhidlbase libdisplayconfig.qti android.hardware.graphics.allocator@4.0 android.hardware.graphics.allocator-V2-ndk android.hardware.graphics.mapper@4.0 android.hardware.graphics.common@1.2 vendor.qti.hardware.display.config-V5-ndk libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/qguard
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := qlm-service
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := libcutils libxml2 liblog libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/qlm-service
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := qsap_qapeservice
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := liblog libqesdk2_0 libjsoncpp libqti-perfd-client libavservices_minijail libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/qsap_qapeservice
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := qwesd
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := libqcbor libminksocket_vendor libminkdescriptor libcrypto libQSEEComAPI libcurl libqmi_csi liblog libutils libavservices_minijail libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/qwesd
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := sec_nvm
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libspcom libbinder_ndk libz libcrypto libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/sec_nvm
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ssgtzd
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := libqcbor libminksocket_vendor libminkdescriptor liblog libutils libjsoncpp libcutils libqrtr libqmi_common_so libqmi_csi libqmi_cci libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/ssgtzd
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := StoreKeybox
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := liboemcrypto libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/StoreKeybox
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := testapp_diag_senddata
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := libdiag liblog libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/testapp_diag_senddata
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := tftp_server
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := libqsocket libqrtr liblog libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/tftp_server
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.qspmhal-service
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := vendor.qti.qspmhal-V1-ndk vendor.qti.qspmhal-impl liblog libutils libavservices_minijail libbase libbinder_ndk libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/vendor.qti.qspmhal-service
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := vmmgr
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SHARED_LIBRARIES := liblog libc++ libc libm libdl
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/bin/vmmgr
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/bin
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := dumpstate-qti.xml
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/etc/vintf/manifest/dumpstate-qti.xml
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/etc/vintf/manifest
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.power.powermodule.xml
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/etc/vintf/manifest/vendor.qti.hardware.power.powermodule.xml
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/etc/vintf/manifest
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.qseecom@1.0-service.xml
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/etc/vintf/manifest/vendor.qti.hardware.qseecom@1.0-service.xml
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/etc/vintf/manifest
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.soter-service.xml
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/etc/vintf/manifest/vendor.qti.hardware.soter-service.xml
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/etc/vintf/manifest
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.memory.pasrmanager-service.xml
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/etc/vintf/manifest/vendor.qti.memory.pasrmanager-service.xml
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/etc/vintf/manifest
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.qspmhal-service.xml
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/etc/vintf/manifest/vendor.qti.qspmhal-service.xml
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/etc/vintf/manifest
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libqtigatekeeper
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := android.hardware.gatekeeper-V1-ndk libhardware libbinder_ndk libbase libutils liblog libcutils libgatekeeper libkeymasterdeviceutils libqcbor libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/hw/libqtigatekeeper.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64/hw
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libspuqtigatekeeper
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := android.hardware.gatekeeper-V1-ndk libhardware libbinder_ndk libbase libutils liblog libcutils libgatekeeper libspukeymintdeviceutils libqcbor libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/hw/libspuqtigatekeeper.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64/hw
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.qseecom@1.0-impl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libbase libutils libcutils liblog libdmabufheap vendor.qti.hardware.qseecom-V1-ndk libbinder_ndk libQSEEComAPI libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/hw/vendor.qti.hardware.qseecom@1.0-impl.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64/hw
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.soter-impl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libhwbinder libutils libcutils libcrypto libbase liblog libQSEEComAPI vendor.qti.hardware.soter-V1-ndk libbinder_ndk libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/hw/vendor.qti.hardware.soter-impl.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64/hw
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.memory.pasrmanager-impl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libbinder_ndk libcutils libutils liblog libbase libpasrutils vendor.qti.memory.pasrmanager-V1-ndk libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/hw/vendor.qti.memory.pasrmanager-impl.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64/hw
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libadaptlaunch
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libcutils liblearningmodule libmeters-ns libsqlite liblmutils-ns libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libadaptlaunch.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libadsp_default_listener
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libadsprpc libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libadsp_default_listener.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libaodoptfeature
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libcutils libutils liblog libbinder libtinyxml2 libpowercore libdisplayconfig.qti libhidlbase libbinder_ndk vendor.qti.hardware.display.config-V5-ndk libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libaodoptfeature.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libapengine
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libcutils liblearningmodule libmeters-ns liblmutils-ns libsqlite libhwbinder libhidlbase libutils libtinyxml2 libthermalclient liblmthermallistner libqti-qesdk-secure libbase libbinder_ndk vendor.qti.hardware.display.config-V5-ndk android.hardware.thermal-V1-ndk android.hidl.allocator@1.0 vendor.qti.qspmhal-V1-ndk libqspm-mem-utils-vendor libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libapengine.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libappclassifier
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libcutils liblearningmodule libsqlite libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libappclassifier.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libbase64
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libutils libcutils liblog libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libbase64.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libcdsp_default_listener
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libcdsprpc libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libcdsp_default_listener.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libcpion
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libdmabufheap libvmmem libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libcpion.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libdrmfs
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libutils libcutils libdiag liblog libQSEEComAPI libxml2 libseclog libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libdrmfs.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libdrmtime
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libutils libcutils libdiag liblog libQSEEComAPI libtime_genoff libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libdrmtime.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libeai_fixed
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libeai_fixed.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libeai_float
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libeai_float.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libgamepoweroptfeature
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libcutils libutils liblog libbinder libtinyxml2 libpowercore libdisplayconfig.qti libhidlbase libsqlite libbase libbinder_ndk vendor.qti.hardware.display.config-V5-ndk libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libgamepoweroptfeature.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libGPMTEEC_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libc libcutils libutils liblog libGPTEE_vendor libminkdescriptor libminksocket_vendor libdmabufheap libc++ libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libGPMTEEC_vendor.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libGPreqcancel
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libutils libcutils libdiag liblog libQSEEComAPI libGPreqcancel_svc libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libGPreqcancel.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libGPreqcancel_svc
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libutils libcutils liblog libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libGPreqcancel_svc.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libGPTEE_vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libc libcutils libutils liblog libc++ libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libGPTEE_vendor.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libgpt
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libutils libQSEEComAPI liblog libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libgpt.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libhdcp1prov
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libdiag libutils libcutils liblog libminkdescriptor libtrustedapploader libQSEEComAPI libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libhdcp1prov.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libhdcp2p2prov
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libdiag libutils libcutils liblog libminkdescriptor libtrustedapploader libQSEEComAPI libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libhdcp2p2prov.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libhdcpsrm
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libQSEEComAPI libminkdescriptor libtrustedapploader libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libhdcpsrm.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libkeymasterdeviceutils
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libion libcutils liblog libcrypto libdmabufheap libminkdescriptor libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libkeymasterdeviceutils.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libkeymasterprovision
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libcrypto libkeymasterdeviceutils libkeymasterutils libqcbor libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libkeymasterprovision.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := liblightninglaunches
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libcutils liblearningmodule libmeters-ns libsqlite liblmutils-ns libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/liblightninglaunches.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := liblmthermallistner
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libcutils libbinder_ndk libutils libthermalclient android.hardware.thermal-V1-ndk libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/liblmthermallistner.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := liblmutils-ns
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libnl vendor.qti.hardware.servicetracker@1.0 vendor.qti.hardware.servicetracker@1.1 libhidlbase libsqlite libutils liblearningmodule android.hardware.thermal-V1-ndk liblmthermallistner libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/liblmutils-ns.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := liblowi_client
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libutils libcutils liblog libgps.utils libloc_base_util libloc_mq_client liblowi_common libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/liblowi_client.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := liblowi_common
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libloc_base_util libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/liblowi_common.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := liblowi_wifihal
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblowi_client libcutils libutils liblog libgps.utils libloc_base_util libloc_mq_client liblowi_common libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/liblowi_wifihal.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libmeters-ns
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libcutils liblearningmodule liblmutils-ns libq-perflog libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libmeters-ns.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libnative-api
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libminksocket_vendor liblog libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libnative-api.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := liboemcrypto
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libutils liblog libQSEEComAPI libcpion libminkdescriptor libcutils libtrustedapploader vendor.qti.hardware.display.config-V7-ndk libpower libcrypto libbinder_ndk libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/liboemcrypto.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libops
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libutils libcutils libQSEEComAPI liblog libdrm vendor.qti.hardware.display.config-V7-ndk libbinder_ndk libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libops.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libpasrutils
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libpasrutils.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libpsmoptfeature
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libcutils libutils liblog libbinder libtinyxml2 libpowercore libdisplayconfig.qti libhidlbase libsqlite libbinder_ndk vendor.qti.hardware.display.config-V5-ndk libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libpsmoptfeature.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libqapesdk
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libcutils liblearningmodule libsqlite vendor.display.config@1.0 libhidlbase libutils libthermalclient android.hardware.thermal-V1-ndk liblmthermallistner libperfconfig libqti-qesdk-secure libmeters-ns liblmutils-ns libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libqapesdk.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libqesdk2_0
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libjsoncpp libcutils libbase libutils libhidlbase vendor.qti.qesdhal@1.0.vendor vendor.qti.qesdhal@1.1.vendor vendor.qti.qesdhal@1.2.vendor vendor.qti.qesdhal@1.3 libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libqesdk2_0.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libqisl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libcutils liblog libQSEEComAPI libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libqisl.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libQSEEComAPI
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libion libcutils libutils liblog libdmabufheap libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libQSEEComAPI.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libqspm-mem-utils-vendor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := vendor.qti.qspmhal-V1-ndk libcutils libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libqspm-mem-utils-vendor.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libqtikeymaster4
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libcrypto libhidlbase libutils libcutils libkeymasterdeviceutils libkeymasterutils libbase libqcbor android.hardware.keymaster@4.0 android.hardware.keymaster@4.1 libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libqtikeymaster4.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libqtikeymint
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libcrypto libhidlbase libutils libcutils libkeymasterdeviceutils libbase libqcbor libkeymaster_messages android.hardware.keymaster@4.0 android.hardware.keymaster@4.1 android.hardware.security.keymint-V3-ndk android.hardware.security.rkp-V3-ndk android.hardware.security.secureclock-V1-ndk android.hardware.security.sharedsecret-V1-ndk libbinder_ndk libkeymasterutils libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libqtikeymint.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := librpmb
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libutils libQSEEComAPI liblog libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/librpmb.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libseclog
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libutils libcutils libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libseclog.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libsilkyscrolls
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libcutils liblearningmodule libsqlite libmeters-ns liblmutils-ns libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libsilkyscrolls.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libskewknob
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libc libcutils libc++ libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libskewknob.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libspcom
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libion libdmabufheap libvmmem libutils libcutils liblog libcrypto libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libspcom.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libspl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libcutils liblog libQSEEComAPI libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libspl.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libspukeymintdeviceutils
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libion libspcom libcutils liblog libcrypto libdmabufheap libminkdescriptor libqcbor libminksocket_vendor libhardware_legacy libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libspukeymintdeviceutils.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libspukeymintprovision
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libcrypto libspukeymintdeviceutils libspukeymintutils libqcbor libspukeymint libbinder_ndk android.hardware.security.keymint-V2-ndk libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libspukeymintprovision.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libspukeymint
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libcrypto libhidlbase libutils libcutils libspukeymintdeviceutils libbase libqcbor libkeymaster_messages android.hardware.security.keymint-V3-ndk android.hardware.security.rkp-V3-ndk android.hardware.security.secureclock-V1-ndk android.hardware.security.sharedsecret-V2-ndk libbinder_ndk libspukeymintutils libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libspukeymint.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libssc_default_listener
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libsdsprpc libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libssc_default_listener.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libssd
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libutils libcutils libdiag liblog libQSEEComAPI libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libssd.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libstandbyfeature
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libcutils libutils liblog libbinder libtinyxml2 libpowercore libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libstandbyfeature.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libsubsystem_control
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libcutils liblog libqmi_cci libqmi_common_so libmdmdetect libperipheral_client libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libsubsystem_control.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libsysmon_cdsp_skel
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libsysmon_cdsp_skel.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libtaautoload
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libminkdescriptor libjsoncpp libdmabufheap libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libtaautoload.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libtrustedapploader
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := liblog libminkdescriptor libminksocket_vendor libqcbor libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libtrustedapploader.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libtzdrmgenprov
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libutils libcutils liblog libQSEEComAPI libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libtzdrmgenprov.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libvideooptfeature
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libcutils libutils liblog libbinder libtinyxml2 libpowercore libdisplayconfig.qti libhidlbase libbinder_ndk vendor.qti.hardware.display.config-V5-ndk libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/libvideooptfeature.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libffbmdiagplugin
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libcutils liblog libdiag libsubsystem_control libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/qsysd-diag-plugin/libffbmdiagplugin.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64/qsysd-diag-plugin
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.qesdhal@1.0.vendor
LOCAL_INSTALLED_MODULE_STEM := vendor.qti.qesdhal@1.0.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libhidlbase liblog libutils libcutils libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/vendor.qti.qesdhal@1.0.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.qesdhal@1.1.vendor
LOCAL_INSTALLED_MODULE_STEM := vendor.qti.qesdhal@1.1.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := vendor.qti.qesdhal@1.0.vendor libhidlbase liblog libutils libcutils libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/vendor.qti.qesdhal@1.1.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.qesdhal@1.2.vendor
LOCAL_INSTALLED_MODULE_STEM := vendor.qti.qesdhal@1.2.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := vendor.qti.qesdhal@1.0.vendor vendor.qti.qesdhal@1.1.vendor libhidlbase liblog libutils libcutils libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/vendor.qti.qesdhal@1.2.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.qesdhal@1.3
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := vendor.qti.qesdhal@1.0.vendor vendor.qti.qesdhal@1.1.vendor vendor.qti.qesdhal@1.2.vendor libhidlbase liblog libutils libcutils libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/vendor.qti.qesdhal@1.3.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.qspmhal-impl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libutils vendor.qti.qspmhal-V1-ndk libqspm-mem-utils-vendor liblog libcutils libbinder libbase libbinder_ndk libc++ libc libm libdl
LOCAL_MODULE_SUFFIX := .so
LOCAL_STRIP_MODULE := false
LOCAL_MULTILIB := 64
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := ../../../target/product/niobe/vendor/lib64/vendor.qti.qspmhal-impl.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_VENDOR)/lib64
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)
LOCAL_PATH := $(PREBUILT_PATH)

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.datachannelservice-V1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.datachannelservice-V1-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.datachannelservice-V1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.datachannelservice-V1-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.dpmaidlservice-V1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.hardware.dpmaidlservice-V1-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.dpmaidlservice-V1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.hardware.dpmaidlservice-V1-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.data.factory-V2.4-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.data.factory-V2.4-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.data.factory-V2.4-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.data.factory-V2.4-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.rcssipaidlservice-V1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.rcssipaidlservice-V1-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.rcssipaidlservice-V1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.rcssipaidlservice-V1-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.dpmservice-V1.0-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.hardware.dpmservice-V1.0-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.dpmservice-V1.0-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.hardware.dpmservice-V1.0-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := com.quicinc.cne.server-V2.1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/com.quicinc.cne.server-V2.1-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.rcsuceaidlservice-V1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.rcsuceaidlservice-V1-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.rcsuceaidlservice-V1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.rcsuceaidlservice-V1-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.factoryaidlservice-V1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.factoryaidlservice-V1-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.factoryaidlservice-V1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.factoryaidlservice-V1-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.datachannelservice-V2-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.datachannelservice-V2-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.datachannelservice-V2-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.datachannelservice-V2-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.data.qmi-V1.0-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.hardware.data.qmi-V1.0-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.factory-V2.1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.factory-V2.1-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.factory-V2.1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.factory-V2.1-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := com.qti.dpmframework
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/com.qti.dpmframework_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := com.quicinc.cne.server-V1.0-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/com.quicinc.cne.server-V1.0-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := com.quicinc.cne.server-V2.0-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/com.quicinc.cne.server-V2.0-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.data.factory-V2.0-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.data.factory-V2.0-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.data.factory-V2.0-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.data.factory-V2.0-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := com.quicinc.cne.constants-V2.0-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/com.quicinc.cne.constants-V2.0-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.connectionaidlservice-V1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.connectionaidlservice-V1-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.connectionaidlservice-V1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.connectionaidlservice-V1-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := com.quicinc.cne.constants-V2.1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/com.quicinc.cne.constants-V2.1-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.mwqemadapter-V1.0-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.hardware.mwqemadapter-V1.0-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.mwqemadapter-V1.0-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.hardware.mwqemadapter-V1.0-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.rcssip-V1.1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.rcssip-V1.1-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.rcssip-V1.1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.rcssip-V1.1-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.cacertaidlservice-V1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.hardware.cacertaidlservice-V1-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.cacertaidlservice-V1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.hardware.cacertaidlservice-V1-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.factory-V1.1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.factory-V1.1-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.factory-V1.1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.factory-V1.1-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.rcsuce-V1.1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.rcsuce-V1.1-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.rcsuce-V1.1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.rcsuce-V1.1-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.data.factoryservice-V1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.data.factoryservice-V1-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.data.factoryservice-V1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.data.factoryservice-V1-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := com.quicinc.cne.api-V1.0-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/com.quicinc.cne.api-V1.0-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.data.factory-V2.3-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.data.factory-V2.3-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.slmadapter-V1.0-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.hardware.slmadapter-V1.0-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.slmadapter-V1.0-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.hardware.slmadapter-V1.0-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.data.cne.internal.server-V1.0-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.hardware.data.cne.internal.server-V1.0-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.data.cne.internal.server-V1.2-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.hardware.data.cne.internal.server-V1.2-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.data.cne.internal.api-V1.0-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.hardware.data.cne.internal.api-V1.0-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.data.factory-V2.5-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.data.factory-V2.5-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.data.factory-V2.5-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.data.factory-V2.5-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.connection-V1.0-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.connection-V1.0-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.connection-V1.0-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.connection-V1.0-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := tcmclient
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/tcmclient_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.data.factory-V2.2-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.data.factory-V2.2-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := com.quicinc.cne.constants-V1.0-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/com.quicinc.cne.constants-V1.0-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.data.cne.internal.constants-V1.0-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.hardware.data.cne.internal.constants-V1.0-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.data.cne.internal.server-V1.1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.hardware.data.cne.internal.server-V1.1-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.dpmservice-V1.1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.hardware.dpmservice-V1.1-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.dpmservice-V1.1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.hardware.dpmservice-V1.1-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.rcssip-V1.2-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.rcssip-V1.2-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.rcssip-V1.2-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.rcssip-V1.2-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.rcsuce-V1.2-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.rcsuce-V1.2-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.rcsuce-V1.2-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.rcsuce-V1.2-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := com.quicinc.cne.api-V1.1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/com.quicinc.cne.api-V1.1-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.data.factory-V2.1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.data.factory-V2.1-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.data.factory-V2.1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.data.factory-V2.1-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.rcsuce-V1.0-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.rcsuce-V1.0-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.rcsuce-V1.0-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.rcsuce-V1.0-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.rcssip-V1.0-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.rcssip-V1.0-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.rcssip-V1.0-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.rcssip-V1.0-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.data.factory-V1.0-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.data.factory-V1.0-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.data.factory-V1.0-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.data.factory-V1.0-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.data.factory-V2.6-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.data.factory-V2.6-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.data.factory-V2.6-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.data.factory-V2.6-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.factory-V2.0-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.factory-V2.0-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.factory-V2.0-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.factory-V2.0-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.data.cne.internal.server-V1.3-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.hardware.data.cne.internal.server-V1.3-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := com.quicinc.cne.server-V2.2-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/com.quicinc.cne.server-V2.2-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := dpmapi
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/dpmapi_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := dpmapi
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/dpmapi_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.factory-V2.2-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.factory-V2.2-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.factory-V2.2-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.factory-V2.2-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.mwqemadapteraidlservice-V1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.hardware.mwqemadapteraidlservice-V1-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.hardware.mwqemadapteraidlservice-V1-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.hardware.mwqemadapteraidlservice-V1-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.data.factory-V2.7-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.data.factory-V2.7-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.data.factory-V2.7-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.data.factory-V2.7-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.factory-V1.0-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.factory-V1.0-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.ims.factory-V1.0-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.ims.factory-V1.0-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.data.factory-V2.8-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.data.factory-V2.8-java_intermediates/classes.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.qti.data.factory-V2.8-java
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES := ../../../../target/common/obj/JAVA_LIBRARIES/vendor.qti.data.factory-V2.8-java_intermediates/classes-header.jar
LOCAL_UNINSTALLABLE_MODULE := true
ifeq ($(MODULE.TARGET.$(LOCAL_MODULE_CLASS).$(LOCAL_MODULE)),)
include $(BUILD_PREBUILT)
endif

