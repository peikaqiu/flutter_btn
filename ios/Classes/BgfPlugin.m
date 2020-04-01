#import "BgfPlugin.h"
#if __has_include(<bgf/bgf-Swift.h>)
#import <bgf/bgf-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "bgf-Swift.h"
#endif

@implementation BgfPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBgfPlugin registerWithRegistrar:registrar];
}
@end
