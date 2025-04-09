//
//  AppDelegate.swift
//  GMClustering
//
//  Created by kavitha on 08/04/25.
//


import GoogleMaps


class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        GMSServices.provideAPIKey("AIzaSyC0hOi1H3H-GorTbUIG8Ttoy4jDua5Vcd4")
        return true
    }
}
