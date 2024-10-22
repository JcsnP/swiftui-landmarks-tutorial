//
//  MapView.swift
//  Landmarks
//
//  Created by pnyossita on 23/10/2567 BE.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 8.440948, longitude: 99.760156),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    // Define the pin location
    let pin = MapPinItem(coordinate: CLLocationCoordinate2D(latitude: 8.440948, longitude: 99.760156), id: UUID())
    
    var body: some View {
        Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true, annotationItems: [pin]) { pin in
            MapPin(coordinate: pin.coordinate, tint: .blue)
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    // Custom struct conforming to Identifiable
    struct MapPinItem: Identifiable {
        let coordinate: CLLocationCoordinate2D
        let id: UUID
    }
}

#Preview {
    MapView()
}
