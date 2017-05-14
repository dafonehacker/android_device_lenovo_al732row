# Copyright (C) 2015 The CyanogenMod Project
#		2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ifneq ($(BOARD_HAVE_BLUETOOTH_MTK),)
ifeq ($(TARGET_BOARD_PLATFORM), mt6580)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_C_INCLUDES := system/bt/hci/include

LOCAL_CFLAGS := -g -c -W -Wall -O2 -D_POSIX_SOURCE

LOCAL_SRC_FILES := libbt-vendor-mtk.c

LOCAL_SHARED_LIBRARIES := \
	libnativehelper \
	libcutils \
	libutils \
	liblog \
	libdl

LOCAL_PRELINK_MODULE := false
LOCAL_MODULE := libbt-vendor
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)

include $(BUILD_SHARED_LIBRARY)

endif
endif
