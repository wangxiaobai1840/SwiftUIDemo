// 
//  LandmarkList.swift
//  SwiftTest
//
//  Created by wanglixia05 on 2021/5/10.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = true
    var filteredLandmarks: [LandmarkRow] {
        modelData.landmarks.filter { (landmark) -> Bool in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    var body: some View {
        NavigationView{
            List{
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Favorites only")
                })
                ForEach(filteredLandmarks, id: \.id){ landmark in
                    NavigationLink(
                        destination: LandmarkDetail(landmark: landmark)
                    ) {
                        LandmarkRowView(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
//            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"],  id: \.self) { deviceName in
            LandmarkList()
                .environmentObject(ModelData())
                .previewDevice(PreviewDevice(rawValue: deviceName))
        }

    }
}
