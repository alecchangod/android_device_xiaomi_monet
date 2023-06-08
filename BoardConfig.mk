#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/monet

BUILD_BROKEN_DUP_RULES := true

# Inherit from sm8250-common
include device/xiaomi/sm8250-common/BoardConfigCommon.mk

# A/B
TARGET_IS_VAB := false

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := lito

# Display
TARGET_SCREEN_DENSITY := 440

# Kernel
TARGET_KERNEL_CONFIG := monet_defconfig

# SoC
PROCESSOR_MODEL := SM7250

# UDFPS
TARGET_HAS_UDFPS := true

# Inherit from the proprietary version
include vendor/xiaomi/monet/BoardConfigVendor.mk
