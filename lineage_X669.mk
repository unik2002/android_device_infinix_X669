$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, device/infinix/X669/device.mk)

PRODUCT_DEVICE     := X669
PRODUCT_NAME       := lineage_X669
PRODUCT_BRAND      := Infinix
PRODUCT_MODEL      := Infinix X669
PRODUCT_MANUFACTURER := INFINIX

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="X669-user 12 SP1A.210812.016 GL-20250122V562 release-keys"

BUILD_FINGERPRINT := Infinix/X669-GL/Infinix-X669:12/SP1A.210812.016/GL-20250122V562:user/release-keys