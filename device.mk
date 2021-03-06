#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, vendor/meizu/m1971/m1971-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Charger
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/charger,root/res/images/charger)

# GBoard
PRODUCT_PACKAGES += \
    Gboard

# GCamGo
PRODUCT_PACKAGES += \
    GCamGo

# Init
PRODUCT_PACKAGES += \
    init.target.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/vendor_fstab.qcom:$(TARGET_COPY_OUT_SYSTEM)/etc/vendor_fstab.qcom

# Input
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/keylayout,$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout)

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.0 \
    android.hardware.nfc@1.1 \
    android.hardware.secure_element@1.0 \
    com.android.nfc_extras \
    libnfc-nci \
    libnfc_nci_jni \
    vendor.nxp.nxpese@1.0 \
    vendor.nxp.nxpnfc@1.0 \
    NfcNci \
    Tag

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/nfc,$(TARGET_COPY_OUT_SYSTEM)/etc)

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-impl.m1973

# ViaBrowser
PRODUCT_PACKAGES += \
    ViaBrowser

# Inherit from sm8150-common
$(call inherit-product, device/meizu/sm8150-common/common.mk)
