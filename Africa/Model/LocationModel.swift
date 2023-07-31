//
//  LocationModel.swift
//  Africa
//
//  Created by Gurleen Kaur on 2023-07-28.
//

import Foundation
import MapKit


struct NationalParkLocation: Codable, Identifiable{
    
    let id : String
    let name: String
    let image: String
    let latitude: Double
    let longitude: Double
    
    //Computed property
    
    var location: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
