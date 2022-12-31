#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

# Inherit from monet device
$(call inherit-product, device/xiaomi/monet/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := aospa_monet
PRODUCT_DEVICE := monet
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 10 Lite 5G

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="monet-user 12 SKQ1.211006.001 V13.0.2.0.SJIEUXM release-keys"

BUILD_FINGERPRINT := google/cheetah/cheetah:13/TD1A.220804.031/9071314:user/release-keys
