LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)


LOCAL_CFLAGS := -Wall -Werror -g -O0

LOCAL_C_INCLUDES := \
    frameworks/native/include/media/openmax \
    $(LOCAL_PATH)/../qexif

LOCAL_SRC_FILES := qomx_core.c

LOCAL_MODULE           := libqomx_core
LOCAL_VENDOR_MODULE    := true
LOCAL_SHARED_LIBRARIES := libcutils libdl liblog

include $(BUILD_SHARED_LIBRARY)
