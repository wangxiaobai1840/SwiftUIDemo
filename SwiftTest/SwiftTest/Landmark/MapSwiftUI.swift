// 
//  MapSwiftUI.swift
//  SwiftTest
//
//  Created by wanglixia05 on 2021/5/8.
//

import SwiftUI
import MapKit

struct MapSwiftUI: View {
    var coordinate:CLLocationCoordinate2D

    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )

    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear{
                setRegion(coordinate)
            }

    }
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region =  MKCoordinateRegion(
            center:coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

struct MapSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        MapSwiftUI(coordinate:  CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
