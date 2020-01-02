#line 1 "/Users/bandarhelal/Desktop/flex/flex/flex.xm"
#import <UIKit/UIKit.h>
#import "FLEXManager.h"




#include <objc/message.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

__attribute__((unused)) static void _logos_register_hook$(Class _class, SEL _cmd, IMP _new, IMP *_old) {
unsigned int _count, _i;
Class _searchedClass = _class;
Method *_methods;
while (_searchedClass) {
_methods = class_copyMethodList(_searchedClass, &_count);
for (_i = 0; _i < _count; _i++) {
if (method_getName(_methods[_i]) == _cmd) {
if (_class == _searchedClass) {
*_old = method_getImplementation(_methods[_i]);
*_old = method_setImplementation(_methods[_i], _new);
} else {
class_addMethod(_class, _cmd, _new, method_getTypeEncoding(_methods[_i]));
}
free(_methods);
return;
}
}
free(_methods);
_searchedClass = class_getSuperclass(_searchedClass);
}
}
@class SpringBoard; 
static Class _logos_superclass$_ungrouped$SpringBoard; static void (*_logos_orig$_ungrouped$SpringBoard$applicationDidFinishLaunching$)(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST, SEL, id);

#line 6 "/Users/bandarhelal/Desktop/flex/flex/flex.xm"

static void _logos_method$_ungrouped$SpringBoard$applicationDidFinishLaunching$(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg) {
    (_logos_orig$_ungrouped$SpringBoard$applicationDidFinishLaunching$ ? _logos_orig$_ungrouped$SpringBoard$applicationDidFinishLaunching$ : (__typeof__(_logos_orig$_ungrouped$SpringBoard$applicationDidFinishLaunching$))class_getMethodImplementation(_logos_superclass$_ungrouped$SpringBoard, @selector(applicationDidFinishLaunching:)))(self, _cmd, arg);
    [[FLEXManager sharedManager] showExplorer];
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SpringBoard = objc_getClass("SpringBoard"); _logos_superclass$_ungrouped$SpringBoard = class_getSuperclass(_logos_class$_ungrouped$SpringBoard); { _logos_register_hook$(_logos_class$_ungrouped$SpringBoard, @selector(applicationDidFinishLaunching:), (IMP)&_logos_method$_ungrouped$SpringBoard$applicationDidFinishLaunching$, (IMP *)&_logos_orig$_ungrouped$SpringBoard$applicationDidFinishLaunching$);}} }
#line 12 "/Users/bandarhelal/Desktop/flex/flex/flex.xm"
