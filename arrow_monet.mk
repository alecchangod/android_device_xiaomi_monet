#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Arrow OS stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

# Inherit from monet device
$(call inherit-product, device/xiaomi/monet/device.mk)

# Include firmware
# $(call inherit-product, vendor/xiaomi-firmware/monet/firmware.mk)

# MIUI Camera
# $(call inherit-product, vendor/xiaomi/monet-miuicamera/products/miuicamera.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := arrow_monet
PRODUCT_DEVICE := monet
BOARD_VENDOR := Xiaomi
TARGET_VENDOR := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2002J9G

TARGET_INCLUDE_PIXEL_CHARGER := true

# Build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cheetah-user 13 TQ3A.230605.012 10204971 release-keys"

# ArrowOS additions
DEVICE_MAINTAINER := alecchangod

BUILD_FINGERPRINT := google/cheetah/cheetah:13/TQ3A.230605.012/10204971:user/release-keys

