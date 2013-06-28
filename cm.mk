$(call inherit-product, vendor/cm/config/gsm.mk)

TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, device/samsung/codina/full_codina.mk)

PRODUCT_NAME := cm_codina
