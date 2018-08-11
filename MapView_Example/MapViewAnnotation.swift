//
//  MapViewAnnotation.swift
//  MapView_Example
//
//  Created by Shiju Varghese on 11/08/18.
//  Copyright © 2018 Shiju. All rights reserved.
//

import Foundation
import MapKit

final class MapViewAnnotation: NSObject, MKAnnotation {
  
  var coordinate: CLLocationCoordinate2D
  var title: String?
  var subtitle: String?
  
  init(coordinate: CLLocationCoordinate2D, title: String, subtitle: String) {
    self.coordinate = coordinate
    self.title = title
    self.subtitle = subtitle
    
    super.init()
  }
  
  var region: MKCoordinateRegion {
    let span = MKCoordinateSpanMake(0.05, 0.05)
    return MKCoordinateRegion(center: coordinate, span: span)
  }
  
}

