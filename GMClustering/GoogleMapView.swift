//
//  GoogleMapView.swift
//  GMClustering
//
//  Created by kavitha on 08/04/25.
//

import SwiftUI
import GoogleMaps
import GoogleMapsUtils


struct GoogleMapView: UIViewControllerRepresentable {
        
    func makeCoordinator() -> Coordinator {
        return Coordinator()
    }

    func makeUIViewController(context: Context) -> some GoogleMapsViewController {
        
        let vc = GoogleMapsViewController()
        
        return vc
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
                
        let cameraPosition = GMSCameraPosition(latitude: 47.60, longitude: -122.33, zoom:4.0)
        uiViewController.map.animate(to: cameraPosition)
               
    }
    
}


final class Coordinator: NSObject, GMSMapViewDelegate {
    
    func mapView(_ mapView: GMSMapView, didTap marker: GMSMarker) -> Bool {
        
        mapView.animate(toLocation: marker.position)
        // check if a cluster icon was tapped
        if marker.userData is GMUCluster {
          // zoom in on tapped cluster
          mapView.animate(toZoom: mapView.camera.zoom + 1)
          NSLog("Did tap cluster")
          return true
        }

        NSLog("Did tap a normal marker")
        return false
    }
}
