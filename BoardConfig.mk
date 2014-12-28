# config.mk
#
# Product-specific compile-time definitions.
#

# The generic product target doesn't have any hardware-specific pieces.
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Build OpenGLES emulation guest and host libraries
BUILD_EMULATOR_OPENGL := false
TARGET_USE_PAN_DISPLAY := true
BOARD_EGL_CFG := device/xilinx/zedboard/egl.cfg
BOARD_GPU_DRIVERS := swrast

# Build and enable the OpenGL ES View renderer. When running on the emulator,
# the GLES renderer disables itself if host GL acceleration isn't available.
USE_OPENGL_RENDERER := true

BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true
BOARD_HAVE_BLUETOOTH := false
BOARD_HAVE_BLUETOOTH_BCM := false
TARGET_NO_RADIOIMAGE := true
TARGET_NO_USE_SUSPEND := true

BOARD_USES_SECURE_SERVICES := false
BOARD_USE_LEGACY_UI := true

TARGET_PREBUILT_KERNEL :=
KERNEL_DEFCONFIG := xilinx_zynq_android_defconfig
DEVICE_TREE_SRC := zynq-zedboard.dts
DEVICE_TREE_BIN := devicetree.dtb
RAMDISK_IMAGE := ramdisk.image
RAMDISK_SIZE_K := 256
#BOARD_CUSTOM_MKBOOTIMG := mkimage -A arm -O linux -T ramdisk -a 0x2000000 -n "Zedboard ramdisk" -d $(RAMDISK_IMAGE) uramdisk.image.gz

TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true
ARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 368435456
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 16777216
BOARD_USERDATAIMAGE_PARTITION_SIZE := 536870912
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 4096

TARGET_RECOVERY_FSTAB = device/xilinx/zedboard/fstab.xilinxzynqplatform

SMALLER_FONT_FOOTPRINT := true
MINIMAL_FONT_FOOTPRINT := true

