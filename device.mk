LOCAL_PATH := device/infinix/X669

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
ENABLE_VIRTUAL_AB := true

# A/B OTA scripts
AB_OTA_UPDATER := true
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=erofs \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL (Unisoc/SPRD specific)
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-impl.recovery \
    vendor.sprd.hardware.boot@1.2-impl \
    vendor.sprd.hardware.boot@1.2-impl.recovery \
    bootctrl \
    bootctrl.recovery \
    bootctrl.ums9230

# Health HAL
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Fastboot
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# OTA
PRODUCT_PACKAGES += \
    otapreopt_script \
    update_engine \
    update_engine_sideload \
    update_verifier

PRODUCT_PACKAGES_DEBUG += \
    update_engine_client \
    bootctrl.ums9230

# VNDK (verified: SDK=31)
PRODUCT_TARGET_VNDK_VERSION := 31
PRODUCT_SHIPPING_API_LEVEL  := 31

# fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.ums9230:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.ums9230 \
    $(LOCAL_PATH)/rootdir/etc/fstab.ums9230:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.ums9230

# Vendor manifest
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/manifest.xml:$(TARGET_COPY_OUT_VENDOR)/etc/vintf/manifest.xml
