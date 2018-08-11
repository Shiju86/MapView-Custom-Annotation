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
    mapView.setRegion(annotation.region, animated: true)

    mapView.addAnnotation(annotation)
    
   }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

//MARK: - MKMapViewDelegate
extension ViewController: MKMapViewDelegate {
  
  func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
    
    //MARK: - Default Annotation
    /*
     if let mapAnotationView = self.mapView.dequeueReusableAnnotationView(withIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier) as? MKMarkerAnnotationView {
     
     mapAnotationView.animatesWhenAdded = true
     mapAnotationView.titleVisibility = .visible
     return mapAnotationView
     
     }
     return nil
     
     */
    
    //MARK: - Set Custom Image to the Pin
    if annotation is MKUserLocation { return nil }
    
    let annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "CustomAnnotation")
      
      annotationView.image = #imageLiteral(resourceName: "location")
      annotationView.canShowCallout = true
      
      return annotationView
    
  }
  
  func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
    print("Pin Annotation Tap: \(String(describing: view.annotation?.title ?? "No Title"))")
  }
  
}
















