#
# Copyright 2018 The Android Open Source Project
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

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_USES_64_BIT_BINDER := true

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := SDM660
TARGET_NO_BOOTLOADER := true

# Kernel
#TARGET_KERNEL_CONFIG := a9y18qlte_eur_defconfig
#TARGET_KERNEL_SOURCE := kernel/samsung/sdm660
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_PREBUILT_KERNEL := device/samsung/a9y18qlte/Image.gz-dtb
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_APPEND_DTB := true
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-

# Image
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 sched_enable_hmp=1 sched_enable_power_aware=1 service_locator.enable=1 swiotlb=1 firmware_class.path=/vendor/firmware_mnt/image androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)

# Platform
TARGET_BOARD_PLATFORM := SDM660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno512
BOARD_USES_QCOM_HARDWARE := true

# Workaround for error copying vendor files to recovery ramdisk
TARGET_COPY_OUT_VENDOR := vendor

# Recovery
TARGET_OTA_ASSERT_DEVICE := a9y18qlte
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_RECOVERY_FSTAB := device/samsung/a9y18qlte/recovery.fstab

# System as root
BOARD_SUPPRESS_SECURE_ERASE := true

# Android Verified Boot
BOARD_AVB_ENABLE := false

# Crypto
#TARGET_HW_DISK_ENCRYPTION := true
#TARGET_CRYPTFS_HW_PATH := "vendor/qcom/opensource/cryptfs_hw"
#TW_INCLUDE_CRYPTO := true
#TW_INCLUDE_FBE := true

# TWRP
RECOVERY_VARIANT := twrp
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 128
TW_CUSTOM_BATTERY_PATH := "/sys/devices/battery/power_supply/battery"
TW_CUSTOM_CPU_TEMP_PATH := "/sys/devices/virtual/thermal/thermal_zone1/temp"
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_TWRPAPP := true
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TW_EXTRA_LANGUAGES := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_INCLUDE_NTFS_3G := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_MTP_DEVICE := /dev/mtp_usb
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file"

# SHRP
SHRP_DEVICE_CODE := a9y18qlte
SHRP_PATH := device/samsung/a9y18qlte
SHRP_MAINTAINER := thongass000
SHRP_REC_TYPE := SAR
SHRP_DEVICE_TYPE := A/B
SHRP_REC := /dev/block/platform/soc/1da4000.ufshc/by-name/recovery
SHRP_INTERNAL := /sdcard
SHRP_EXTERNAL := /external_sd
SHRP_OTG := /usb_otg
SHRP_STATUSBAR_RIGHT_PADDING := 20
SHRP_STATUSBAR_LEFT_PADDING := 20
SHRP_NO_SAR_AUTOMOUNT := true
SHRP_EXPRESS := true
SHRP_EXPRESS_USE_DATA := true
