DEVICE_PACKAGE_OVERLAYS := device/samsung/codina/overlay

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    lights.montblanc \
    com.android.future.usb.accessory \
    SamsungServiceMode \
    Torch

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.samsungcodina:root/fstab.samsungcodina \
    $(LOCAL_PATH)/rootdir/init.samsungcodina.rc:root/init.samsungcodina.rc \
    $(LOCAL_PATH)/rootdir/init.samsungcodina.usb.rc:root/init.samsungcodina.usb.rc \
    $(LOCAL_PATH)/rootdir/lpm.rc:root/lpm.rc \
    $(LOCAL_PATH)/rootdir/prerecovery.rc:root/prerecovery.rc \
    $(LOCAL_PATH)/rootdir/ueventd.samsungcodina.rc:root/ueventd.samsungcodina.rc

# STE
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/cspsa.conf:system/etc/cspsa.conf \
    $(LOCAL_PATH)/configs/omxloaders:system/etc/omxloaders \
    $(LOCAL_PATH)/configs/ste_modem.sh:system/etc/ste_modem.sh \
    $(LOCAL_PATH)/configs/usbid_init.sh:system/bin/usbid_init.sh

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/asound.conf:system/etc/asound.conf \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/adm.sqlite-u8500:system/etc/adm.sqlite-u8500 \
    $(LOCAL_PATH)/configs/Volume.db:system/etc/Volume.db

# Media configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml

# Dbus
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/dbus.conf:system/etc/dbus.conf

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Gps
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/sirfgps.conf:system/etc/sirfgps.conf

    $(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Vold and Storage
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/vold.fstab:system/etc/vold.fstab

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

# Keylayout configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/codina-kp.kl:system/usr/keylayout/codina-kp.kl

# Bluetooth configuration files
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.le.conf:system/etc/bluetooth/main.conf


$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
