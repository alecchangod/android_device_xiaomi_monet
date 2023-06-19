#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common alpha droid stuff.
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
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_WANTS_FOD_ANIMATIONS := true

# GAPPS flag
# WITH_GAPPS := true
# TARGET_CORE_GAPPS := true

# Alpha prop
ALPHA_BUILD_TYPE := UNOFFICIAL
ALPHA_MAINTAINER := alecchangod

# Alpha device prop
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_MATLOG := true
TARGET_USE_GRAPHENE_CAMERA := true
TARGET_USE_PIXEL_LAUNCHER := false
TARGET_EXCLUDES_AUDIOFX := false
TARGET_FACE_UNLOCK_SUPPORTED := true

# Bootanimation prop
USE_LEGACY_BOOTANIMATION := true
TARGET_BOOT_ANIMATION_RES := 1080

# Build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cheetah-user 13 T3B3.230413.003 9957835 release-keys"

BUILD_FINGERPRINT := google/cheetah/cheetah:13/T3B3.230413.003/9957835:user/release-keys
