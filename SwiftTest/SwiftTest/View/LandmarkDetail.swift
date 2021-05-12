// 
//  LandmarkDetail.swift
//  SwiftTest
//
//  Created by wanglixia05 on 2021/5/10.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: LandmarkRow
    var body: some View {
        NavigationView{
            ScrollView{
                MapSwiftUI(coordinate: landmark.locationCoordinate)
                    .ignoresSafeArea(edges:Edge.Set(rawValue: 0))
                    .frame(height: 300)
                CircleImage(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                VStack(alignment: .leading) {
                    Text(landmark.name)
                        .font(.title)
                        .foregroundColor(.primary)
                    HStack{
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    Divider()
                    Text("About \(landmark.park)")
                        .font(.title2)
                        .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    Text(landmark.description)
                }
                .padding()
                Spacer()
            }
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: ModelData().landmarks[0])
    }
}
