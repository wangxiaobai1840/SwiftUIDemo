// 
//  LandmarkApp.swift
//  SwiftTest
//
//  Created by wanglixia05 on 2021/5/10.
//

import SwiftUI

@main
struct LandmarkApp: App {

    @StateObject private var modelData = ModelData()
    let listData = [LandmarkRow(id: 0, name: "Landmark"), LandmarkRow(id: 1, name: "Draw Rect")]

    var body: some Scene {
        WindowGroup {
            ListView()
        }
    }
}
