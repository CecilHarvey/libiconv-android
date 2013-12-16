# libiconv
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE	:= iconv
LOCAL_MODULE_FILENAME := libiconv

LOCAL_C_INCLUDES += $(LOCAL_PATH)/include $(LOCAL_PATH)/libiconv

LOCAL_CFLAGS	:= -Wno-multichar -D_ANDROID -DNO_XMALLOC -DLIBDIR "$(LOCAL_PATH)/libcharset/lib" -DBUILDING_LIBICONV -DIN_LIBRARY -I$(LOCAL_PATH)/include/ -I$(LOCAL_PATH)/lib/ -I$(LOCAL_PATH)/ -I$(LOCAL_PATH)/libcharset/include -w

LOCAL_SRC_FILES := libcharset/lib/localcharset.c lib/relocatable.c lib/iconv.c
LOCAL_STATIC_LIBRARIES := android_support

include $(BUILD_SHARED_LIBRARY)
