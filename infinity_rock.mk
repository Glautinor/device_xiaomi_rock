#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
# ProjectInfinityX Gapps
WITH_GAPPS := true
TARGET_SHIPS_GOOGLE_DIALER := true
TARGET_BUILD_GOOGLE_TELEPHONY := true
TARGET_SHIPS_FULL_GAPPS := false

# ProjectInfinityX Vanilla
#WITH_GAPPS := false
#TARGET_SHIPS_GOOGLE_DIALER := false
#TARGET_BUILD_GOOGLE_TELEPHONY := false
#TARGET_SHIPS_FULL_GAPPS := false

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common ProjectInfinityX stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Inherit from rock device
$(call inherit-product, device/xiaomi/rock/device.mk)

# Disable Eppe
TARGET_DISABLE_EPPE := true

PRODUCT_NAME := infinity_rock
PRODUCT_DEVICE := rock
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 11 Prime

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="missi_phone_global_ext4-user 14 UP1A.231005.007 V816.0.12.0.ULUMIXM release-keys" \
    BuildFingerprint=POCO/stone_p_global/stone:13/TP1A.220624.014/V816.0.12.0.ULUMIXM:user/release-keys

# ProjectInfinityX specific
INFINITY_BUILD_TYPE := UNOFFICIAL
INFINITY_MAINTAINER := GaziBoySid
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_BLUR := false
TARGET_HAS_UDFPS := false
USE_MOTO_CALCULATOR := true

#END

