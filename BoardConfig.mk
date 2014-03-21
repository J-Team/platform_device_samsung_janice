-include device/samsung/u8500-common/BoardCommonConfig.mk

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
#TARGET_RECOVERY_INITRC := device/samsung/janice/rootdir/recovery.rc
#RECOVERY_FSTAB_VERSION := 1
TARGET_RECOVERY_FSTAB := device/samsung/janice/rootdir/fstab.samsungjanice

#TWRP
#HAVE_SELINUX := true
#DEVICE_RESOLUTION := 480x800
#TW_INTERNAL_STORAGE_PATH := "/storage/sdcard0"
#TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
#TW_EXTERNAL_STORAGE_PATH := "/storage/sdcard1"
#TW_EXTERNAL_STORAGE_MOUNT_POINT := "extSdCard"
#TW_NO_REBOOT_BOOTLOADER := true
#TARGET_USE_ST_ERICSSON_KERNEL := true
#TW_NO_REBOOT_BOOTLOADER := true
#TW_HAS_DOWNLOAD_MODE := true
#TW_INCLUDE_INJECTTWRP := true
#TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun0/file"
#TW_INCLUDE_CRYPTO_SAMSUNG := true
#TW_INCLUDE_CRYPTO := true
#TW_CRYPTO_FS_TYPE := "ext4"
#TW_CRYPTO_MNT_POINT := "/data"
#TW_CRYPTO_FS_OPTIONS := "noatime,nosuid,nodev,discard,noauto_da_alloc,journal_async_commit,errors=panic   wait,check_spo,encryptable=/efs/metadata"

# Release name
PRODUCT_RELEASE_NAME := GT-I9070

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9070 TARGET_DEVICE=GT-I9070
