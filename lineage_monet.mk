#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Rising OSS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from monet device
$(call inherit-product, device/xiaomi/monet/device.mk)

# Include firmware
$(call inherit-product, vendor/xiaomi-firmware/monet/firmware.mk)

# MIUI Camera
#$(call inherit-product, vendor/xiaomi/camera/products/miuicamera.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_monet
PRODUCT_DEVICE := monet
BOARD_VENDOR := Xiaomi
TARGET_VENDOR := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2002J9G

TARGET_INCLUDE_PIXEL_CHARGER := true

# Rom Specific Flags
TARGET_INCLUDE_WIFI_EXT := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP  := true

RISING_CHIPSET := Snapdragon®765G
RISING_MAINTAINER := alecchangod
CUSTOM_BUILD_TYPE := UNOFFICIAL
RISING_PACKAGE_TYPE := "VANILLA AOSP"
TARGET_BUILD_APERTURE_CAMERA := true
TARGET_HAS_UDFPS := true
TARGET_USE_PIXEL_FINGERPRINT := true

# Build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cheetah-user 13 T3B3.230413.003 9957835 release-keys"

BUILD_FINGERPRINT := google/cheetah/cheetah:13/T3B3.230413.003/9957835:user/release-keys
