//
//  AppDelegate.swift
//  rnfromscratch
//
//  Created by Raul Max on 24/01/22.
//

import UIKit
import React

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    let bridge: RCTBridge = RCTBridge.init(delegate: self, launchOptions: nil)
    let rootView: RCTRootView = RCTRootView(bridge: bridge, moduleName: "rnfromscratch", initialProperties: nil)
    
    self.window = UIWindow.init()
    
    let rootViewController: UIViewController = UIViewController.init()
    rootViewController.view = rootView
    self.window!.rootViewController = rootViewController
    self.window?.makeKeyAndVisible()
    
    return true
  }
}

extension AppDelegate: RCTBridgeDelegate {
  func sourceURL(for bridge: RCTBridge!) -> URL! {
#if DEBUG
    return RCTBundleURLProvider.jsBundleURL(forBundleRoot: "index", packagerHost: "localhost", enableDev: true, enableMinification: false)
#else
    return Bundle.main.url(forResource: "main", withExtension: "jsbundle")
#endif
  }
}

