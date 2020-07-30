#import "FlutterKeychainaccessPlugin.h"
#if __has_include(<flutter_keychainaccess/flutter_keychainaccess-Swift.h>)
#import <flutter_keychainaccess/flutter_keychainaccess-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_keychainaccess-Swift.h"
#endif

@implementation FlutterKeychainaccessPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterKeychainaccessPlugin registerWithRegistrar:registrar];
}
@end
