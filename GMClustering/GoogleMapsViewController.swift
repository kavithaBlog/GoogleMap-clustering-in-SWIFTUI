//
//  GoogleMapsViewController.swift
//  GMClustering
//
//  Created by kavitha on 03/04/25.
//

import GoogleMaps
import SwiftUI
import GoogleMapsUtils

class GoogleMapsViewController: UIViewController{
    
    var map = GMSMapView()
    var clusterManager: GMUClusterManager!
    
    var markers = [GMSMarker]()
        
    override func loadView() {
        super.loadView()
        self.view = map
        
        self.map.clear()
        
        let algorithm = GMUNonHierarchicalDistanceBasedAlgorithm()
        let renderer = GMUDefaultClusterRenderer(mapView: map, clusterIconGenerator: GMUDefaultClusterIconGenerator())
        clusterManager = GMUClusterManager(map: map, algorithm: algorithm, renderer: renderer)
        
        let position1 = CLLocationCoordinate2D(latitude: 47.60, longitude: -122.33)
        let marker1 = GMSMarker(position: position1)

        let position2 = CLLocationCoordinate2D(latitude: 47.60, longitude: -122.46)
        let marker2 = GMSMarker(position: position2)

        let position3 = CLLocationCoordinate2D(latitude: 47.30, longitude: -122.46)
        let marker3 = GMSMarker(position: position3)

        let position4 = CLLocationCoordinate2D(latitude: 47.20, longitude: -122.23)
        let marker4 = GMSMarker(position: position4)

        let markerArray = [marker1, marker2, marker3, marker4]
        clusterManager.add(markerArray)
        
        clusterManager.cluster()
        
    }
    
}
