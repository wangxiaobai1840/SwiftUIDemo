// 
//  ListView.swift
//  SwiftTest
//
//  Created by wanglixia05 on 2021/5/18.
//

import SwiftUI

struct ListView: View {
    
    @StateObject private var modelData = ModelData()

    let listData = [LandmarkRow(id: 0, name: "Landmark"), LandmarkRow(id: 1, name: "Draw Rect")]
    var body: some View {
            NavigationView{
                List{
                    ForEach(listData, id: \.id) { model in
                        NavigationLink(
                            destination: model.id == 0 ? AnyView(ContentView()
                                        .environmentObject(modelData)
                            ) : AnyView(BadgeBackground())
                        ) {
                            Text(model.name)
                        }
                    }
                }
                .navigationBarTitle("title")
                .navigationBarTitleDisplayMode(.inline)
            }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
