LOCAL_PATH := device/infinix/X669

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
ENABLE_VIRTUAL_AB := true

# A/B OTA
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

# OTA packages
PRODUCT_PACKAGES += \
    otapreopt_script \
    update_engine \
    update_engine_sideload \
    update_verifier

PRODUCT_PACKAGES_DEBUG += \
    update_engine_client \
    bootctrl.ums9230

# VNDK (verified: SDK=31, VNDK=31)
PRODUCT_TARGET_VNDK_VERSION := 31
PRODUCT_SHIPPING_API_LEVEL  := 31

# fstab — copied to both vendor ramdisk and vendor partition
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.ums9230:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.ums9230 \
    $(LOCAL_PATH)/rootdir/etc/fstab.ums9230:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.ums9230

# Vendor manifest
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/manifest.xml:$(TARGET_COPY_OUT_VENDOR)/etc/vintf/manifest.xml

# Compatibility matrix
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/compatibility_matrix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/vintf/compatibility_matrix.xml

# Audio policy configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_engine_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_engine_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_engine_criteria.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_engine_criteria.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_engine_criterion_types.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_engine_criterion_types.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_engine_product_strategies.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_engine_product_strategies.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_engine_stream_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_engine_stream_volumes.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/configs/audio/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    $(LOCAL_PATH)/configs/audio/primary_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/primary_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/bluetooth_audio_policy_configuration_disable_offload.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration_disable_offload.xml \
    $(LOCAL_PATH)/configs/audio/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_apm_configuration_configurable.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_apm_configuration_configurable.xml \
    $(LOCAL_PATH)/configs/audio/audio_route.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_route.xml \
    $(LOCAL_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/configs/audio/audio_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_config.xml \
    $(LOCAL_PATH)/configs/audio/audio_pcm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_pcm.xml

# Media configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_codecs_c2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \
    $(LOCAL_PATH)/configs/media_profiles_turnkey.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_turnkey.xml

# WiFi configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/wifi/vendor_hals/unisoc_wifi_hal_arm64.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/vendor_hals/unisoc_wifi_hal_arm64.xml

# Sensor config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensor_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sensor_config.xml
