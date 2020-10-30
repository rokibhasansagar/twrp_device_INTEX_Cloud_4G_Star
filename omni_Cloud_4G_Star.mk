#
# Copyright (C) 2020 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := Cloud_4G_Star

# Base config for any device
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
# Core config for 64-bit device
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)
# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Copy prebuilt kernel into recovery
PRODUCT_COPY_FILES += device/INTEX/Cloud_4G_Star/prebuilt/Image.gz-dtb:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := Cloud_4G_Star
PRODUCT_NAME := omni_Cloud_4G_Star
PRODUCT_BRAND := INTEX
PRODUCT_MODEL := Cloud_4G_Star
PRODUCT_MANUFACTURER := INTEX
PRODUCT_BOARD := mt6735

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="alps/full_Z110_INT_K11/Z110_INT_K11:5.0/LRX21M/1447949059:user/test-keys" \
    PRIVATE_BUILD_DESC="full_Z110_INT_K11-user 5.0 LRX21M 1447949059 test-keys"

# try force addition of fingerprint
BUILD_FINGERPRINT := "alps/full_Z110_INT_K11/Z110_INT_K11:5.0/LRX21M/1447949059:user/test-keys"

