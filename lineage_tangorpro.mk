#
# SPDX-FileCopyrightText: 2021-2024 The LineageOS Project
# SPDX-FileCopyrightText: 2021-2024 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Evolution X stuff
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
DEVICE_CODENAME := tangorpro
DEVICE_PATH := device/google/tangorpro
VENDOR_PATH := vendor/google/tangorpro
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)
$(call inherit-product, device/google/gs201/lineage_common.mk)
$(call inherit-product, device/google/gs201/evolution_common.mk)
$(call inherit-product, $(DEVICE_PATH)/$(DEVICE_CODENAME)/device-lineage.mk)
$(call inherit-product, $(DEVICE_PATH)/$(DEVICE_CODENAME)/device-evolution.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel Tablet
PRODUCT_NAME := lineage_$(DEVICE_CODENAME)

# Boot animation
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 2560

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="tangorpro-user 15 AP4A.250205.002 12821496 release-keys" \
    BuildFingerprint=google/tangorpro/tangorpro:15/AP4A.250205.002/12821496:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)
