#
# Copyright (C) 2023-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/plato/device.mk)

# Inherit LineageOS product
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_plato
PRODUCT_DEVICE := plato
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 22071212AG

PRODUCT_SYSTEM_NAME := plato_global
PRODUCT_SYSTEM_DEVICE := plato

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="plato_global-user 14 UP1A.230905.011 V816.0.7.0.ULQMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Xiaomi/plato_global/plato:14/UP1A.230905.011/V816.0.7.0.ULQMIXM:user/release-keys
