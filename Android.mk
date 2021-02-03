#
# Copyright (C) 2021 PixelExperience
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),apollo)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
