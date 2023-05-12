#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from monet device
$(call inherit-product, device/xiaomi/monet/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := aosp_monet
PRODUCT_DEVICE := monet
BOARD_VENDOR := Xiaomi
TARGET_VENDOR := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2002J9G

#Elixir Stuffs
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
ELIXIR_MAINTAINER := alecchangod
ELIXIR_BUILD_TYPE := UNOFFICIAL
$(call inherit-product, vendor/aosp/config/common.mk)

# Build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cheetah-user 13 T3B3.230413.003 9957835 release-keys"

BUILD_FINGERPRINT := google/cheetah/cheetah:13/T3B3.230413.003/9957835:user/release-keys
