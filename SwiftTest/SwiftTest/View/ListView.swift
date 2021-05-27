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
    case page

    var currentView: AnyView {
        switch self {
        case .landmark:
            return AnyView(ContentView()
                            .environmentObject(ModelData()))
        case .drawRect:
            return AnyView(Badge())
        case .anmitions:
            return AnyView(HikeView(hike: ModelData().hikes[0]))
        case .page:
            return AnyView(
                PageView(pages: ModelData().features.map({ FeatureCard(landmark: $0)
                }))
                .aspectRatio(1.5, contentMode: .fit)
            )
        }
    }
}

struct ListView: View {

    let listData = [LandmarkRow(id: DemoType.landmark.rawValue, name: "Landmark"), LandmarkRow(id: DemoType.drawRect.rawValue, name: "Draw Rect"), LandmarkRow(id: DemoType.anmitions.rawValue, name: "Drawing and Animation"), LandmarkRow(id: DemoType.page.rawValue, name: "PageViewController")]
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
