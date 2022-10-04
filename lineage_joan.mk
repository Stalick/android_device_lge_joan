# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Inherit from joan device
$(call inherit-product, device/lge/joan/device.mk)

# Device identifiers
PRODUCT_DEVICE := joan
PRODUCT_NAME := lineage_joan
PRODUCT_BRAND := lge
PRODUCT_MODEL := joan
PRODUCT_MANUFACTURER := LGE
PRODUCT_RELEASE_NAME := V30
TARGET_BOOT_ANIMATION_RES := 1440

PRODUCT_GMS_CLIENTID_BASE := android-om-lg

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="joan" \
    PRODUCT_DEVICE="joan" \
    PRODUCT_NAME="joan_global_com" \
    PRIVATE_BUILD_DESC="joan_global_com-user 8.0.0 OPR1.170623.026 181381736b4e9 release-keys"

BUILD_FINGERPRINT="lge/joan_global_com/joan:8.0.0/OPR1.170623.026/181381736b4e9:user/release-keys"

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += ro.product.model ro.vendor.product.model ro.product.system.model

# chipset flag (one word only/no spacing) 
RICE_CHIPSET := MSM8998 
 
# gapps build flag, if not defined build type is vanilla 
WITH_GMS := false
 
# Sushi Bootanimation (only 720/1080p/1440 supported. if not defined, bootanimation is google bootanimation) 
SUSHI_BOOTANIMATION := 1440 
 
# Graphene Camera 
TARGET_BUILD_GRAPHENEOS_CAMERA := false 
 
# disable/enable blur support, default is false 
TARGET_ENABLE_BLUR := true 
 
# UDFPS ICONS/ANIMATIONS 
TARGET_HAS_UDFPS := false 
 
# Quick tap feature 
TARGET_SUPPORTS_QUICK_TAP := true 
 
# Face Unlock 
TARGET_FACE_UNLOCK_SUPPORTED := true