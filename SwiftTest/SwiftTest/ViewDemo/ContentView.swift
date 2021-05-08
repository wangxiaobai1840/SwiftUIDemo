// 
//  ContentView.swift
//  SwiftTest
//
//  Created by wanglixia05 on 2021/5/8.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, content: {

            MapSwiftUI()
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)

            Text("Turtle Rock")
                .font(.title)
            HStack{
                Text("Joshua Tree National Park")
                Spacer()
                Text("California")
            }
            .font(.subheadline)
            .foregroundColor(.secondary)
            Divider() // 分割线
            Text("About Turtle Rock")
                .font(.title2)
            Text("Descriptive text goes here.")
        })
        .padding()
        Spacer()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
