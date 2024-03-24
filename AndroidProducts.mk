#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/calyx_monet.mk \
    $(LOCAL_DIR)/lineage_monet.mk

COMMON_LUNCH_CHOICES := \
    calyx_monet-user \
    calyx_monet-userdebug \
    calyx_monet-eng \
    lineage_monet-user \
    lineage_monet-userdebug \
    lineage_monet-eng
