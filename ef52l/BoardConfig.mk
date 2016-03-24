# Copyright (C) 2014 The Android Open Source Project
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

-include device/pantech/msm8960-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/pantech/ef52l/BoardConfigVendor.mk

TARGET_KERNEL_SOURCE := ../Pantech/kernel_msm8960
TARGET_KERNEL_CONFIG := cm_ef52_defconfig
#TARGET_PREBUILT_KERNEL := device/pantech/ef52l/recovery/kernel

BOARD_BOOTIMAGE_PARTITION_SIZE := 20971520 #20MB
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520 #20MB
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1782579200 #1.7GB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27577531392 #25.7GB
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_OTA_ASSERT_DEVICE := ef52l,ef52s,ef52k

#Vibrator
#BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/pantech/ef52l/vibrator/vibrator.c

# LightHAL
TARGET_PROVIDES_LIBLIGHT 			:= true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/pantech/ef52l/bluetooth
#BOARD_BLUEDROID_VENDOR_CONF := device/pantech/ef52l/bluetooth/libbt_vndcfg.txt

#Sensor
EF52_USE_KITKAT_SENSORS := yes

#TWRP screen config
DEVICE_RESOLUTION := 720x1280
