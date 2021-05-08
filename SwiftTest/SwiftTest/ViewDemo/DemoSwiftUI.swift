// 
//  DemoSwiftUI.swift
//  SwiftTest
//
//  Created by wanglixia05 on 2021/5/8.
//

import SwiftUI

struct DemoModel {
    var name = ""
    var imageUrl = ""

   static func demoList(num: Int = 10) -> [DemoModel] {
        var array = [DemoModel]()
        for i in 0..<num {
            let demo = DemoModel(name: "\(i+1)", imageUrl: "")
            array.append(demo)
        }
        return array
    }
}

struct DemoSwiftUI: View {
    var dateList = DemoModel.demoList(num: 20)
    var body: some View {
        Text("Hello, World")
            .font(.title)
            .foregroundColor(.red)
            .multilineTextAlignment(.leading)
    }
}

struct DemoSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DemoSwiftUI()
        }
    }
}

