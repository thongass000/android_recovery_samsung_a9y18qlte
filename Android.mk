LOCAL_PATH := $(call my-dir)

ifneq ($(filter a9y18qlte, $(TARGET_DEVICE)),)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
