#import <UIKit/UIKit.h>
#import "FLEXManager.h"

%config(generator=internal)

%hook SpringBoard
- (void)applicationDidFinishLaunching:(id)arg {
    %orig(arg);
    [[FLEXManager sharedManager] showExplorer];
}
%end
