#import <React/RCTViewManager.h>
#import <React/RCTUIManager.h>
#import "RCTBridge.h"
#import <React/RCTConvert.h>

@interface FabricNativeComponentTestViewManager : RCTViewManager
@end

@implementation FabricNativeComponentTestViewManager

RCT_EXPORT_MODULE(FabricNativeComponentTestView)

- (UIView *)view
{
  return [[UIView alloc] init];
}

RCT_CUSTOM_VIEW_PROPERTY(color, UIColor, UIView)
{
  if (json) {
      [view setBackgroundColor:[UIColor blueColor]];
    } else {
      [view setBackgroundColor:nil];
    }
}

@end
