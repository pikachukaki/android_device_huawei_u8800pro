
LOCAL_PATH := $(call my-dir)

device-makefiles := \
    recovery

include $(call all-makefiles-under,$(device-makefiles))
