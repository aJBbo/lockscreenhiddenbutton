THEOS_DEVICE_IP = 192.168.1.208

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = LockScreenHiddenButton

LockScreenHiddenButton_FILES = Tweak.xm
LockScreenHiddenButton_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
