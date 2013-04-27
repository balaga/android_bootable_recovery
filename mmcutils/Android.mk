ifneq ($(TARGET_SIMULATOR),true)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

ifneq ($(CWM_EMMC_BOOT_DEVICE_NAME),)
    LOCAL_CFLAGS += -DCWM_EMMC_BOOT_DEVICE_NAME="$(CWM_EMMC_BOOT_DEVICE_NAME)"
endif

ifneq ($(CWM_EMMC_BOOT_DEVICE_SIZE),)
    LOCAL_CFLAGS += -DCWM_EMMC_BOOT_DEVICE_SIZE=$(CWM_EMMC_BOOT_DEVICE_SIZE)
endif

ifneq ($(CWM_EMMC_RECOVERY_DEVICE_NAME),)
    LOCAL_CFLAGS += -DCWM_EMMC_RECOVERY_DEVICE_NAME="$(CWM_EMMC_RECOVERY_DEVICE_NAME)"
endif

ifneq ($(CWM_EMMC_RECOVERY_DEVICE_SIZE),)
    LOCAL_CFLAGS += -DCWM_EMMC_RECOVERY_DEVICE_SIZE=$(CWM_EMMC_RECOVERY_DEVICE_SIZE)
endif

LOCAL_SRC_FILES := \
	mmcutils.c

LOCAL_MODULE := libmmcutils
LOCAL_MODULE_TAGS := eng

include $(BUILD_STATIC_LIBRARY)

endif	# !TARGET_SIMULATOR
