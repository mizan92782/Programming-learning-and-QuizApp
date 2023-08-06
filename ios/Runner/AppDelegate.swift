import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {

   override func registrar(forPlugin pluginKey: String) -> FlutterPluginRegistrar? {
        flutterViewController.registrar(forPlugin: pluginKey)
    }

    override func hasPlugin(_ pluginKey: String) -> Bool {
        flutterViewController.hasPlugin(pluginKey)
    }

    override func valuePublished(byPlugin pluginKey: String) -> NSObject? {
        flutterViewController.valuePublished(byPlugin: pluginKey)
    }
    
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {


    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
