#
# Copyright (C) 2020 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq (pa_RMX1851,$(TARGET_PRODUCT))

$(call inherit-product, device/realme/RMX1851/device.mk)

# Include Paranoid Android common configuration
TARGET_BOOT_ANIMATION_RES := 1080

TARGET_USES_AOSP := false
TARGET_USES_QCOM_BSP := false

include device/qcom/common/common.mk
include vendor/pa/main.mk

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := pa_RMX1851
PRODUCT_DEVICE := RMX1851
PRODUCT_BRAND := Realme
PRODUCT_MODEL := RMX1851
PRODUCT_MANUFACTURER := Realme

BUILD_FINGERPRINT := "Realme/RMX1851/RMX1851:9/PKQ1.190101.001/1574084019:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sdm710-user 9 PKQ1.190101.001 eng.root.20191209.210742 release-keys" \
    PRODUCT_NAME="RMX1851" \
    TARGET_DEVICE="RMX1851"

PRODUCT_GMS_CLIENTID_BASE := android-realme

endif
