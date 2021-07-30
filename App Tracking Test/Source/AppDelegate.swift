//
//  AppDelegate.swift
//  App Tracking Test
//
//  Created by Christopher Goldsby on 7/30/21.
//

import UIKit
import AppTrackingTransparency

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setUpWindow()
        requestTrackingAuthorization()
        return true
    }

    // MARK: - Private

    private func setUpWindow() {
        window = UIWindow(frame: UIScreen.main.bounds)
        let viewController = UIViewController()
        viewController.view.backgroundColor = .systemGreen
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
    }

    private func requestTrackingAuthorization() {
        ATTrackingManager.requestTrackingAuthorization {
            status in
            print("App Tracking Transparency status: \(status.rawValue)")
        }
    }
}
