#import <React/RCTBridgeModule.h>
#import <React/RCTViewManager.h>
#import "ApngPlayerBridge.h"

@interface RCT_EXTERN_MODULE(ApngPlayerManager, RCTViewManager)

RCT_EXPORT_VIEW_PROPERTY(source, NSString)

@end
