//
//  GMClusteringApp.swift
//  GMClustering
//
//  Created by kavitha on 03/04/25.
//

import SwiftUI

@main
struct GMClusteringApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            GoogleMapView()
        }
    }
}
