//
//  AppDelegate.swift
//  App Tracking Test
//
//  Created by Christopher Goldsby on 7/30/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setUpWindow()
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
}
