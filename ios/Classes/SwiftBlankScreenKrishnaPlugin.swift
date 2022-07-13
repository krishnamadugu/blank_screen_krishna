import Flutter
import UIKit

public class SwiftBlankScreenKrishnaPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "blank_screen_krishna", binaryMessenger: registrar.messenger())
    let instance = SwiftBlankScreenKrishnaPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
