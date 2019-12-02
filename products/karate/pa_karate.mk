#
# Copyright (C) 2017 The LineageOS Project
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

$(call inherit-product, device/lenovo/karate/full_karate.mk)

# Inherit from those products, most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our common CAF device tree.
include device/qcom/common/common.mk

# Paranoid Android platform
include vendor/pa/main.mk

# Include Paranoid Android common configuration
TARGET_BOOT_ANIMATION_RES := 1080

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := pa_karate
BOARD_VENDOR := lenovo
PRODUCT_DEVICE := karate
PRODUCT_BRAND := Lenovo
PRODUCT_MANUFACTURER := LENOVO

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="K33" \
    PRODUCT_NAME="karate" \
    PRIVATE_BUILD_DESC="karate-user 7.0 NRD90N K33_S231_171114_ROW release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Lenovo/karate/K33:7.0/NRD90N/K33_S231_171114_ROW:user/release-keys"
