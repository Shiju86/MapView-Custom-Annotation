//
//  ViewController.swift
//  MapView_Example
//
//  Created by Shiju Varghese on 11/08/18.
//  Copyright © 2018 Shiju. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

  @IBOutlet weak var mapView: MKMapView!
  
  override func viewDidLoad() {
    super.viewDidLoad()

    mapView.register(MKMarkerAnnotationView.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
    
    let cordinate = CLLocationCoordinate2D(latitude: 30.7047, longitude: 76.8003)
    let annotation = MapViewAnnotation(coordinate: cordinate, title: "Airtel", subtitle: "Bharti Airtel Limited")
    
    mapView.addAnnotation(annotation)
    mapView.setRegion(annotation.region, animated: true)
    
   }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

extension ViewController: MKMapViewDelegate {
  
  func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
    if let mapAnotationView = self.mapView.dequeueReusableAnnotationView(withIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier) as? MKMarkerAnnotationView {
      
      mapAnotationView.animatesWhenAdded = true
      mapAnotationView.titleVisibility = .visible
      return mapAnotationView
    }
    
    return nil
  }
  
}
















