#import "BlankScreenKrishnaPlugin.h"
#if __has_include(<blank_screen_krishna/blank_screen_krishna-Swift.h>)
#import <blank_screen_krishna/blank_screen_krishna-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "blank_screen_krishna-Swift.h"
#endif

@implementation BlankScreenKrishnaPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBlankScreenKrishnaPlugin registerWithRegistrar:registrar];
}
@end
