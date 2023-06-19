#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, vendor/bootleggers/config/BoardConfigSoong.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Xtended stuff.
$(call inherit-product, vendor/bootleggers/config/common_full_phone.mk)

# Inherit from monet device
$(call inherit-product, device/xiaomi/monet/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := bootleg_monet
PRODUCT_DEVICE := monet
BOARD_VENDOR := Xiaomi
TARGET_VENDOR := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2002J9G

TARGET_INCLUDE_PIXEL_CHARGER := true

## Bootleggers ROM additions
# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080
TARGET_USE_SINGLE_BOOTANIMATION := true
TARGET_PICK_BOOTANIMATION := "6"

TARGET_ENABLE_BLUR := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Maintainer Prop
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bootleggers.maintainer=alecchangod
TARGET_BOOTLEG_ARCH := arm64

# Build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cheetah-user 13 TQ3A.230605.012 10204971 release-keys"

BUILD_FINGERPRINT := google/cheetah/cheetah:13/TQ3A.230605.012/10204971:user/release-keys
