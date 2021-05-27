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
    var isFeatured: Bool
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    var category: Category
    enum Category: String, CaseIterable, Codable, Hashable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
    var featureImage: Image? {
        isFeatured ? Image(imageName + "_feature") : nil
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
        self.isFeatured = false
        self.category = .lakes
    }
}
