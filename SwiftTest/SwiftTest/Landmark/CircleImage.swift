// 
//  CircleImage.swift
//  SwiftTest
//
//  Created by wanglixia05 on 2021/5/8.
//

import SwiftUI

struct CircleImage: View {
    var image:Image

    var body: some View {
        image.resizable()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .aspectRatio(contentMode: .fit)
            .shadow(radius: 7)

    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
            .frame(width: 300, height: 300)
    }
}
