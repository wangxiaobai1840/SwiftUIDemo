// 
//  ModelData.swift
//  SwiftTest
//
//  Created by wanglixia05 on 2021/5/8.
//

import SwiftUI
import Combine

final class ModelData: ObservableObject {
    @Published var landmarks: [LandmarkRow] = load("landmarkData.json")
    var hikes: [Hike] = load("hikeData.json")
    var features: [LandmarkRow] {
        landmarks.filter { $0.isFeatured }
    }

}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("couldn't find \(filename) in main bundle")
    }
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("couldn't find \(filename) in main bundle:\n\(error)")
    }
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("couldn't parse \(filename) as \(T.self) :\n\(error)")

    }
}
