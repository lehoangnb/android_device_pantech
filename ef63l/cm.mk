# Copyright (C) 2016 The CyanogenMod Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ef63l device
$(call inherit-product, device/pantech/ef63l/device.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Call the proprietary setup
$(call inherit-product-if-exists, vendor/pantech/ef63l/ef63l-vendor.mk)

 # Unofficial build ID
TARGET_UNOFFICIAL_BUILD_ID := XDAVN

PRODUCT_NAME := cm_ef63l
PRODUCT_DEVICE := ef63l
PRODUCT_MANUFACTURER := PANTECH
PRODUCT_MODEL := IM-A910L

PRODUCT_GMS_CLIENTID_BASE := android-ef63l

PRODUCT_BRAND := PANTECH
TARGET_VENDOR := PANTECH
TARGET_VENDOR_PRODUCT_NAME := ef63l
TARGET_VENDOR_DEVICE_NAME := ef63l
