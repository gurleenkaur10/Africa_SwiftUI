//
//  MapView.swift
//  Africa
//
//  Created by Gurleen Kaur on 2023-07-19.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region : MKCoordinateRegion = {
        var mapCoodinated = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoodinated, span: mapZoomLevel )
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    var body: some View {
        // No 1 Basic Map
//        Map(coordinateRegion: $region)
        // 2 advance map
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
            //Pin old style always static
//            MapPin(coordinate: item.location, tint: .accentColor)
            // Markers new style always static
//            MapMarker(coordinate: item.location, tint: .accentColor)
            //Custom annotation Basic could be interactive
            MapAnnotation(coordinate: item.location){
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32, alignment: .center)
            }
            
        })
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
