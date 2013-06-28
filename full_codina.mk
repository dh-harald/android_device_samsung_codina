PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

$(call inherit-product, build/target/product/full_base_telephony.mk)

PRODUCT_NAME := full_codina
PRODUCT_DEVICE := codina
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I8160
PRODUCT_MANUFACTURER := samsung

$(call inherit-product-if-exists, vendor/samsung/codina/codina-vendor.mk)
$(call inherit-product, device/samsung/codina/codina.mk)
