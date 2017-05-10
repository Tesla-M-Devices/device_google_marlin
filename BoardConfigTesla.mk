# Common board config for marlin, sailfish

# Disable dex pre-opt
WITH_DEXPREOPT := false

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_KERNEL_CONFIG := hells_defconfig
TARGET_KERNEL_SOURCE := kernel/google/marlin

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
BOARD_VENDOR_QCOM_LOC_PDK_FEATURE_SET := true

# Sepolicy
BOARD_SEPOLICY_DIRS += device/google/marlin/sepolicy/verizon

# Ignore vendor partition audio_effects.conf and use the device (system/etc/) one
TARGET_IGNORE_VENDOR_AUDIO_EFFECTS_CONF := true

# Time services
BOARD_USES_QC_TIME_SERVICES := true

#Opts
STRICT_ALIASING := true
GRAPHITE_OPTS := true
LOCAL_CLANG_LTO := true
my_clang := true

-include vendor/google/marlin/BoardConfigVendor.mk
