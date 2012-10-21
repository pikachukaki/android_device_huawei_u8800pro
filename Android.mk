
LOCAL_PATH := $(call my-dir)

device-makefiles := \

include $(call all-named-subdir-makefiles,$(device-makefiles))
