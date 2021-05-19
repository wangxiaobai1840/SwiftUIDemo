// 
//  Hike.swift
//  SwiftTest
//
//  Created by wanglixia05 on 2021/5/19.
//

import SwiftUI

struct Hike: Codable, Hashable, Identifiable {

    var id: Int
    var name: String
    var distance: Double
    var difficulty: Int
    var observations: [Observation]
    static var formatter = LengthFormatter()

    var distabceText: String {
        return Hike.formatter.string(fromValue: distance, unit: .kilometer)
    }
    struct Observation: Codable, Hashable {
        var distanceFromStart: Double
        var elevation: Range<Double>
        var pace: Range<Double>
        var heartRate: Range<Double>
    }

}
