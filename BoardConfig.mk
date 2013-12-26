-include device/samsung/u8500-common/BoardCommonConfig.mk

TARGET_SPECIFIC_HEADER_PATH := device/samsung/janice/include
TARGET_OTA_ASSERT_DEVICE := janice,i9070,GT-I9070

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/u8500
TARGET_KERNEL_CONFIG := aosp_i9070_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.6

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/janice/bluetooth

# Vibrator
BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/samsung/janice/vibrator/vibrator.c

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/janice/rootdir/fstab.samsungjanice

# Release name
PRODUCT_RELEASE_NAME := GT-I9070

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9070 TARGET_DEVICE=GT-I9070
