#
# Copyright (C) 2023-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/rubens/device.mk)

# Inherit PixelOS product
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

PRODUCT_NAME := lineage_rubens
PRODUCT_DEVICE := rubens
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 22041211AC

PRODUCT_SYSTEM_NAME := rubens
PRODUCT_SYSTEM_DEVICE := rubens

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="rubens-user 14 UP1A.231005.007 V816.0.14.0.ULNCNXM release-keys" \
    BuildFingerprint=Xiaomi/rubens/rubens:14/UP1A.231005.007/V816.0.14.0.ULNCNXM:user/release-keys \



