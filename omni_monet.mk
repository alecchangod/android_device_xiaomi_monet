# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file is the build configuration for a full Android
# build for grouper hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# must be before including omni part
TARGET_BOOTANIMATION_SIZE := 1080p

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from monet device
$(call inherit-product, device/xiaomi/monet/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_monet
PRODUCT_DEVICE := monet
BOARD_VENDOR := Xiaomi
TARGET_VENDOR := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2002J9G

TARGET_INCLUDE_PIXEL_CHARGER := true

TARGET_BOARD_PLATFORM := lito
TARGET_BOOTLOADER_BOARD_NAME := lito
TARGET_DEVICE := M2002J9G
PRODUCT_SYSTEM_DEVICE := M2002J9G
PRODUCT_SYSTEM_NAME := M2002J9G

OMNI_PRODUCT_PROPERTIES += \
    ro.build.product=M2002J9G

OMNI_BUILD_FINGERPRINT := google/cheetah/cheetah:13/TQ1A.221205.011/9244662:user/release-keys

PLATFORM_SECURITY_PATCH_OVERRIDE := 2022-12-05

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="monet-user 12 SKQ1.211006.001 V13.0.2.0.SJIEUXM release-keys"

BUILD_FINGERPRINT := google/cheetah/cheetah:13/TQ1A.221205.011/9244662:user/release-keys
