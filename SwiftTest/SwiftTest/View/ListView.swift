// 
//  ListView.swift
//  SwiftTest
//
//  Created by wanglixia05 on 2021/5/18.
//

import SwiftUI

enum DemoType: Int{
    case landmark = 0
    case drawRect
    case anmitions

    var currentView: AnyView {
        switch self {
        case .landmark:
            return AnyView(ContentView()
                            .environmentObject(ModelData()))
        case .drawRect:
            return AnyView(Badge())
        case .anmitions:
            return AnyView(HikeView(hike: ModelData().hikes[0]))
        }
    }
}

struct ListView: View {

    let listData = [LandmarkRow(id: DemoType.landmark.rawValue, name: "Landmark"), LandmarkRow(id: DemoType.drawRect.rawValue, name: "Draw Rect"), LandmarkRow(id: DemoType.anmitions.rawValue, name: "Drawing and Animation")]
    var body: some View {
        NavigationView{
            List{
                ForEach(listData, id: \.id) { model in
                    NavigationLink(
                        destination:
                            DemoType(rawValue: model.id)?.currentView

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
