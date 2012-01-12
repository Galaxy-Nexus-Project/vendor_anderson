# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit common product files.
$(call inherit-product, vendor/anderson/products/common.mk)

# Tuna overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/anderson/overlay/tuna

# Setup device specific product configuration.
PRODUCT_NAME := anderson_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=yakju BUILD_ID=ITL41F BUILD_FINGERPRINT=google/yakju/maguro:4.0.1/ITL41F/228551:user/release-keys PRIVATE_BUILD_DESC="yakju-user 4.0.1 ITL41F 228551 release-keys" BUILD_NUMBER=228551

# Inherit common build.prop overrides
-include vendor/anderson/products/common_versions.mk

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/anderson/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip 
