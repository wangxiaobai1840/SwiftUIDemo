// 
//  SwiftUIView.swift
//  SwiftTest
//
//  Created by wanglixia05 on 2021/5/8.
//

import SwiftUI
import CoreLocation

struct LandmarkRow: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    private var imageName: String
    var image: Image {
        Image(imageName)
    }

    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }

    init(id: Int, name: String) {
        self.id = id
        self.name = name
        self.park = ""
        self.state = ""
        self.description = ""
        self.isFavorite = false
        self.imageName = ""
        self.coordinates = Coordinates(latitude: 0, longitude: 0)
    }
}
