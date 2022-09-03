# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

# Inherit some common crooked stuff.
$(call inherit-product, vendor/crooked/config/common.mk)
$(call inherit-product, vendor/crooked/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_raven_64.mk)

# Parts
$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := crooked_raven
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=raven \
    PRIVATE_BUILD_DESC="raven-user 13 TP1A.220624.021 8877034 release-keys"

BUILD_FINGERPRINT := $(PRODUCT_OVERRIDE_FINGEPRINT)
