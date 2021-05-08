// 
//  MapSwiftUI.swift
//  SwiftTest
//
//  Created by wanglixia05 on 2021/5/8.
//

import SwiftUI
import MapKit

struct MapSwiftUI: View {

    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )

    var body: some View {
        Map(coordinateRegion: $region)

    }
}

struct MapSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        MapSwiftUI()
    }
}
