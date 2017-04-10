# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit Carbon product configuration
$(call inherit-product, vendor/tesla/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/marlin/aosp_marlin.mk)

# Inherit some common tesla stuff.
$(call inherit-product, vendor/tesla/config/common_full_phone.mk)
$(call inherit-product, vendor/tesla/config/caf_fw.mk)

-include device/google/marlin/marlin/device-tesla.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := tesla_marlin
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel XL
TARGET_MANUFACTURER := Google
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=marlin \
    BUILD_FINGERPRINT=google/marlin/marlin:7.1.2/N2G47J/3831342:user/release-keys \
    PRIVATE_BUILD_DESC="marlin-user 7.1.2 N2G47J 3831342 release-keys"

$(call inherit-product-if-exists, vendor/google/marlin/marlin-vendor.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
	DEVICE_MAINTAINERS="Dustin Rinne (f100cleveland)"
