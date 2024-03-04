#
# Copyright (C) 2022 PixelOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from redwood device
$(call inherit-product, device/xiaomi/redwood/device.mk)

# Inherit some common voltage stuff
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)

# Call the Leica Camera setup
$(call inherit-product-if-exists, vendor/xiaomi/redwood-miuicamera/products/miuicamera.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# voltage Flags
#VOLTAGE_BUILD_TYPE := OFFICIAL
#VOLTAGE_MAINTAINER := RDX463

# Device props
TARGET_SUPPORTS_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_DEBLOAT := true

# GApps
WITH_GAPPS := true

PRODUCT_BRAND := POCO
PRODUCT_DEVICE := redwood
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := voltage_redwood
PRODUCT_MODEL := Poco X5 Pro 5G

PRODUCT_SYSTEM_NAME := redwood_global
PRODUCT_SYSTEM_DEVICE := redwood

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redwood_global-user 13 TKQ1.221114.001 V14.0.7.0.TMSMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := POCO/redwood_global/redwood:13/TKQ1.221114.001/V14.0.7.0.TMSMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
