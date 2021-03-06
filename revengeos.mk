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
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/leeco/x2/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := revengeos_x2
PRODUCT_DEVICE := x2
PRODUCT_MANUFACTURER := LeEco
PRODUCT_BRAND := LeEco

# Inherit some common AOSP stuff.
TARGET_ARCH := arm64
TARGET_DENSITY := xxxhdpi
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_INCLUDE_ARCORE := true

LINEAGE_BUILDTYPE := RELEASE
OTA_XML := https://raw.githubusercontent.com/Lucchetto/OTAs/master/x2.xml

PRODUCT_GMS_CLIENTID_BASE := leeco

TARGET_VENDOR_PRODUCT_NAME := LeMax2
TARGET_VENDOR_DEVICE_NAME := le_x2
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=le_x2 PRODUCT_NAME=LeMax2

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="le_x2-user 6.0.1 FGXOSOP5801910121S eng.letv.20161012.010150.wechatpay release-keys"

BUILD_FINGERPRINT := Letv/LeMax2_WW/le_x2:6.0.1/FGXOSOP5801910121S/letv10120105:user/release-keys

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += ro.product.model

TARGET_VENDOR := leeco
