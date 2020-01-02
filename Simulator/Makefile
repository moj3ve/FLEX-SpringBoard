THEOS_PACKAGE_DIR_NAME = debs
# TARGET = iphone:clang
# ARCHS = armv7 armv7s arm64
TARGET = simulator:clang::8.0
ARCHS = x86_64 i386
# i386 slice is required for 32-bit iOS Simulator (iPhone 5, etc.)
DEBUG = 0
PACKAGE_VERSION = $(THEOS_PACKAGE_BASE_VERSION)

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = flex
flex_FRAMEWORKS = Foundation UIKit CoreGraphics ImageIO QuartzCore WebKit Security
flex_LIBRARIES = z sqlite3
flex_FILES = flex.xm
flex_FILES += $(wildcard flex/*.m)
flex_LDFLAGS = -ObjC 
flex_CFLAGS = -fobjc-arc -Wno-error -Wno-deprecated-declarations -Wno-unsupported-availability-guard -Wno-unused-variable -Wno-unused-function -Wno-unused-parameter -Wno-missing-field-initializers -Wdeclaration-after-statement -Wmissing-declarations -Wredundant-decls -Wno-objc-property-no-attribute -Wno-arc-repeated-use-of-weak -Wno-implicit-retain-self -Wno-implicit-int
# flex_CCFLAGS += -std=c++17
include $(THEOS_MAKE_PATH)/tweak.mk

ifneq (,$(filter x86_64 i386,$(ARCHS)))
setup:: clean all
	@rm -f /opt/simject/$(TWEAK_NAME).dylib
	@cp -v $(THEOS_OBJ_DIR)/$(TWEAK_NAME).dylib /opt/simject/$(TWEAK_NAME).dylib
	@codesign -f -s - /opt/simject/$(TWEAK_NAME).dylib
	@cp -v $(PWD)/$(TWEAK_NAME).plist /opt/simject
endif
