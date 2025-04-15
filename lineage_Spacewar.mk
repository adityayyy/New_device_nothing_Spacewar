#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Spacewar device
$(call inherit-product, device/nothing/Spacewar/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_Spacewar
PRODUCT_DEVICE := Spacewar
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A063
PRODUCT_MANUFACTURER := Nothing

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-nothing

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceProduct=Spacewar \
    BuildDesc="Spacewar-user 12 SKQ1.211230.001 1666412462 release-keys" \
    BuildFingerprint="Nothing/Spacewar/Spacewar:12/SKQ1.211230.001/1666412462:user/release-keys"

# Rising vars

# Lunch banner maintainer variable
RISING_MAINTAINER="Aditya"

PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Snapdragon_778G+" \
    RisingMaintainer="Aditya"

RISING_MAINTAINER := Aditya
TARGET_ENABLE_BLUR := true
PRODUCT_NO_CAMERA := false
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
EXTRA_UDFPS_ICONS := true
TARGET_HAS_UDFPS := true
TARGET_UDFPS_ANIMATIONS := true
TARGET_SUPPORTS_BLUR := true
WITH_GMS := true
TARGET_INCLUDE_GOOGLE_DIALER := true
