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

# Inherit from heroqltevzw device
$(call inherit-product, device/samsung/heroqltevzw/device.mk)

PRODUCT_DEVICE := heroqltevzw
PRODUCT_NAME := omni_heroqltevzw
PRODUCT_BRAND := Verizon
PRODUCT_MODEL := SM-G930V
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-verizon

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="heroqltevzw-user 8.0.0 R16NW G930VVRU8CRJ3 release-keys"

BUILD_FINGERPRINT := Verizon/heroqltevzw/heroqltevzw:8.0.0/R16NW/G930VVRU8CRJ3:user/release-keys
