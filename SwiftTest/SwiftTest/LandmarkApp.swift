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
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
