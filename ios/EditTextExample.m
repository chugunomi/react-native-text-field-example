#import "EditTextExample.h"
#import "RCTViewManager.h"

@interface RCT_EXTERN_REMAP_MODULE(EditTextExample, EditTextExampleSwift, RCTViewManager)

RCT_EXPORT_VIEW_PROPERTY(text, NSString);

RCT_EXPORT_VIEW_PROPERTY(onTextUpdate, RCTDirectEventBlock)

@end
