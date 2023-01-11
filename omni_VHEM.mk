#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from VHEM device
$(call inherit-product, device/wiko/VHEM/device.mk)

PRODUCT_DEVICE := VHEM
PRODUCT_NAME := omni_VHEM
PRODUCT_BRAND := WIKO
PRODUCT_MODEL := VHEM
PRODUCT_MANUFACTURER := wiko

PRODUCT_GMS_CLIENTID_BASE := android-wiko

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_v820-user 12 SP1A.210812.016 1663851512 release-keys"

BUILD_FINGERPRINT := WIKO/VHEM/VHEM:12/SP1A.210812.016/1663851512:user/release-keys
