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
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

#infinity 
INFINITY_MAINTAINER := "Aditya"
TARGET_SUPPORTS_BLUR := true
INFINITY_BUILD_TYPE := UNOFFICIAL
WITH_GAPPS := true
TARGET_HAS_UDFPS := true
TARGET_SUPPORTS_QUICK_TAP := true

# Axion vars
AXION_CAMERA_REAR_INFO := 50,50
AXION_CAMERA_FRONT_INFO := 16
AXION_MAINTAINER := Aditya
AXION_PROCESSOR := Snapdragon_778G+
BYPASS_CHARGE_SUPPORTED := true
TARGET_ENABLE_BLUR := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := infinity_Spacewar
PRODUCT_DEVICE := Spacewar
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A063
PRODUCT_MANUFACTURER := Nothing

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-nothing

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceProduct=Spacewar \
    BuildFingerprint="Nothing/Spacewar/Spacewar:12/SKQ1.211230.001/1666412462:user/release-keys"

PRODUCT_ENABLE_UFFD_GC := true
