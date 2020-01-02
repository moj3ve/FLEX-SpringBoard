#import <UIKit/UIKit.h>
#import "flex/FLEX.h"

%hook SpringBoard
-(void) applicationDidFinishLaunching:(id)arg {
	%orig(arg);
    [[FLEXManager sharedManager] showExplorer];
}
%end
