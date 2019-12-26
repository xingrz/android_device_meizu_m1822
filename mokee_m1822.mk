#
# Copyright (C) 2020 The MoKee Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit from m1822 device
$(call inherit-product, device/meizu/m1822/device.mk)

# Inherit some common MoKee stuff.
$(call inherit-product, vendor/mokee/config/common_full_phone.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.mk.maintainer=XiNGRZ

PRODUCT_NAME := mokee_m1822
PRODUCT_BRAND := Meizu
PRODUCT_DEVICE := m1822
PRODUCT_MANUFACTURER := Meizu
PRODUCT_MODEL := M1822

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="meizu_M1822_CN" \
    PRODUCT_DEVICE="M1822" \
    PRIVATE_BUILD_DESC="meizu_M1822_CN-user 8.1.0 OPM1.171019.026 1574132388 release-keys"

BUILD_FINGERPRINT := Meizu/meizu_M1822_CN/M1822:8.1.0/OPM1.171019.026/1574132388:user/release-keys
