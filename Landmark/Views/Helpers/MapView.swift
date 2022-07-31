//
//  MapView.swift
//  Landmark
//
//  Created by Shonibare Omofolarin Ajibade on 10/07/2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear{
                setRegion(coordinate)
                
            }
    }
    
    private func setRegion(_ cordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: cordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
