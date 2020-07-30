import Flutter
import UIKit
import KeychainAccess

public class SwiftFlutterKeychainaccessPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_keychainaccess", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterKeychainaccessPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    let keychain = Keychain(service: "com.develocity.koerbchen")
    .synchronizable(true)
    if call.method == "write",
        let args = call.arguments as? [String: String],
        let key = args["key"],
        let value = args["value"] {
        keychain[string: key] = value
    }
    if call.method == "read",
        let args = call.arguments as? [String: String],
        let key = args["key"] {
        result(keychain[string: key])
    }
  }
}
