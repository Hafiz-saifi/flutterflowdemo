import UIKit
import Flutter
import app_group_directory // Import your plugin here

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        let flutterViewController: FlutterViewController = window?.rootViewController as! FlutterViewController
        GeneratedPluginRegistrant.register(with: self)

        // Register additional plugins here if needed
        AppGroupDirectoryPlugin.register(with: self.registrar(forPlugin: "app_group_directory")!)

        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}
