#
# Copyright (C) 2021 PixelExperience
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from apollo device
$(call inherit-product, device/xiaomi/apollo/device.mk)

# Inherit some common PixelExperience stuff.
$(call inherit-product, vendor/aosp/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_apollo
PRODUCT_DEVICE := apollo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 10T

# PixelExperience Properties
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_USES_AOSP_RECOVERY := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true

# Adds face unlock if package is available on ROM source.
TARGET_SUPPORT_FACE_UNLOCK := true

# Build info
BUILD_FINGERPRINT := google/coral/coral:11/RQ1A.210105.003/7005429:user/release-keys
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=apollo \
    PRODUCT_NAME=apollo \
    PRIVATE_BUILD_DISC="coral-user 11 RQ1A.210105.003 7005429 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
