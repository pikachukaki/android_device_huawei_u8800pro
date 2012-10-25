
LOCAL_PATH := $(call my-dir)

device-makefiles := \
    recovery

include $(call all-named-subdir-makefiles,$(device-makefiles))
