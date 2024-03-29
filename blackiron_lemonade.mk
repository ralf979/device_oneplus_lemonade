#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lemonade device
$(call inherit-product, device/oneplus/lemonade/device.mk)

# Inherit some common BlackIron stuff.
$(call inherit-product, vendor/blackiron/config/common_full_phone.mk)

PRODUCT_NAME := blackiron_lemonade
PRODUCT_DEVICE := lemonade
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := LE2115
CUSTOM_DEVICE := OnePlus9

PRODUCT_SYSTEM_NAME := OnePlus9
PRODUCT_SYSTEM_DEVICE := OnePlus9

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus9-user 13 TP1A.220905.001 R.145500e-3ae76-3af55 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/OnePlus9/OnePlus9:13/TP1A.220905.001/R.145500e-3ae76-3af55:user/release-keys

# Blackiron
BLACKIRON_BUILDTYPE := Official
EXTRA_UDFPS_ANIMATIONS := true

# GAPPS
WITH_GMS := true
