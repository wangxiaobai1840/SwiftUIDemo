// 
//  BadgeBackground.swift
//  SwiftTest
//
//  Created by wanglixia05 on 2021/5/14.
//

import SwiftUI

struct BadgeBackground: View {
    var body: some View {
        GeometryReader { geometry in
            Path{ path in
                var width: CGFloat = min(geometry.size.width, geometry.size.height)
                let height = width
                path.move(to:
                            CGPoint(
                                x: width * 0.95,
                                y: height * (0.20 + HexagonParameters.adjustment)
                            )
                )
                HexagonParameters.segments.forEach({ (segment) in
                    path.addLine(to: CGPoint(x: width * segment.line.x, y: height * segment.line.y))
                })
            }

            .fill(Color.black)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }

    }
}

struct BadgeBackground_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBackground()
    }
}
