# Copyright (C) 2011 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for toro hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and toro, hence its name.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)
# Inherit from u8800pro device
$(call inherit-product, device/huawei/u8800pro/device.mk)


# U8800 uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.sys.usb.config=mass_storage

# Live Wallpapers
PRODUCT_PACKAGES += \
   	LiveWallpapers \
    	LiveWallpapersPicker \
    	VisualizationWallpapers \
    	librs_jni

# Filesystem management tools
PRODUCT_PACKAGES += \
   	make_ext4fs \
    	setup_fs

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := huawei_u8800pro
PRODUCT_DEVICE := u8800pro
PRODUCT_BRAND := Huawei
PRODUCT_MANUFACTURER := Huawei
PRODUCT_MODEL := U8800Pro
