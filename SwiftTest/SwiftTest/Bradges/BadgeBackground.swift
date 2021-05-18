// 
//  BadgeBackground.swift
//  SwiftTest
//
//  Created by wanglixia05 on 2021/5/14.
//

import SwiftUI

struct BadgeBackground: View {
    var body: some View {

        let gradientStart = Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255)
        let gradientEnd = Color(red: 239.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)

        GeometryReader { geometry in
            Path{ path in
                var width: CGFloat = min(geometry.size.width, geometry.size.height)
                let height = width
                let xScale: CGFloat = 0.832
                let xOffset: CGFloat = (width * (1.0 - xScale)) / 2.0
                width *= xScale
                
                path.move(
                    to:CGPoint(
                        x: width * 0.95 + xOffset,
                        y: height * (0.20 + HexagonParameters.adjustment)
                    )
                )
                HexagonParameters.segments.forEach({ (segment) in
                    path.addLine(
                        to: CGPoint(
                            x: width * segment.line.x +  xOffset,
                            y: height * segment.line.y
                        )
                    )
                    path.addQuadCurve(
                        to: CGPoint(
                            x: width * segment.curve.x + xOffset,
                            y: height * segment.curve.y
                        ),
                        control: CGPoint(
                            x: width * segment.control.x + xOffset,
                            y: height * segment.control.y
                        )
                    )
                })
            }

            .fill(LinearGradient(
                    // 渐变色
                    gradient: Gradient(colors: [gradientStart, gradientEnd]),
                    startPoint: UnitPoint(x: 0.5, y: 0),
                    endPoint: UnitPoint(x: 0.5, y: 0.6)))
        }
        .aspectRatio(1, contentMode: .fit)


    }
}

struct BadgeBackground_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBackground()
    }
}
