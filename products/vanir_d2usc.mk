#Squisher Choosing
DHO_VENDOR := vanir

# Variable for zip installerscript spam about kernel
KERNEL_SPAM := CM Kernel

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-d2usc

# Inherit AOSP device configuration for GS3 USC.
$(call inherit-product, device/samsung/d2usc/full_d2usc.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/vanir_d2-common.mk)
$(call inherit-product, vendor/vanir/products/cdma.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := vanir_d2usc
PRODUCT_DEVICE := d2usc
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SCH-R530U

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2usc TARGET_DEVICE=d2usc BUILD_FINGERPRINT="samsung/d2usc/d2usc:4.4.2/KOT49H/R530UVXALK5:user/release-keys" PRIVATE_BUILD_DESC="d2usc-user 4.4.2 KOT49H R530UVXALK5 release-keys"
