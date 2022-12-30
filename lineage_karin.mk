#
# Copyright (C) 2015 The CyanogenMod Project
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
#


# Inherit from karin-common device
$(call inherit-product, device/sony/karin/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)

# Inherit some common LineageOS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# This indicates the first api level, device has been commercially launched on.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_l_mr1.mk)

# Add karin specific permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Set those variables here to overwrite the inherited values.
PRODUCT_BRAND := Sony
PRODUCT_NAME := lineage_karin
PRODUCT_MANUFACTURER := Sony
PRODUCT_DEVICE := karin
PRODUCT_MODEL := Xperia Z4 Tablet

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="SGP771-user 7.1.1 32.4.A.1.54-219395100 release-keys"

BUILD_FINGERPRINT := Sony/SGP771/SGP771:7.1.1/32.4.A.1.54/219395100:user/release-keys

