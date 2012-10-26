
LOCAL_PATH := $(call my-dir)

device-makefiles := \
    recovery \
    power

include $(call all-named-subdir-makefiles,$(device-makefiles))
