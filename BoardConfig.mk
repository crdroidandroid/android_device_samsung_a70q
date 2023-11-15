#
# Copyright (C) 2023 The LineageOS Project
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

-include device/samsung/sm6150-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/a70q

# Assert
TARGET_OTA_ASSERT_DEVICE := a70q

# Board
TARGET_BOARD_NAME := SRPRL06C005

# FOD
TARGET_SURFACEFLINGER_UDFPS_LIB := //$(DEVICE_PATH):libudfps_extension.a70q
TARGET_USES_FOD_ZPOS := true

# GPU
TARGET_BOARD_PLATFORM_GPU := qcom-adreno612

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_a70q
TARGET_RECOVERY_DEVICE_MODULES := libinit_a70q

# Kernel
BOARD_BOOT_HEADER_VERSION := 1
TARGET_KERNEL_CONFIG := a70q_defconfig
BOARD_MKBOOTIMG_ARGS := --header_version $(BOARD_BOOT_HEADER_VERSION)

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Security Patch Level
VENDOR_SECURITY_PATCH := 2023-02-01

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Get non-open-source specific aspects
include vendor/samsung/a70q/BoardConfigVendor.mk
