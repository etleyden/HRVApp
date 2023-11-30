//
//  CustomShapes.swift
//  PolarTest
//
//  Created by Ethan Leyden on 11/30/23.
//

import Foundation
import SwiftUI

struct HikingSymbol: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.35717*width, y: 0.826*height))
        path.addLine(to: CGPoint(x: 0.33208*width, y: 0.95*height))
        path.addLine(to: CGPoint(x: 0.23458*width, y: 0.80108*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.52083*width, y: 0.20833*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.91667*width, y: 0.39583*height))
        path.addLine(to: CGPoint(x: 0.91667*width, y: 0.9375*height))
        path.addLine(to: CGPoint(x: 0, y: 0.54167*height))
        path.addLine(to: CGPoint(x: 0.68367*width, y: 0.54167*height))
        path.addLine(to: CGPoint(x: 0.52863*width, y: 0.43833*height))
        path.addLine(to: CGPoint(x: 0.47917*width, y: 0.6375*height))
        path.addLine(to: CGPoint(x: 0.52796*width, y: 0.67621*height))
        path.addLine(to: CGPoint(x: 0, y: 0.9375*height))
        path.addLine(to: CGPoint(x: 0, y: 0.79029*height))
        path.addLine(to: CGPoint(x: 0.33825*width, y: 0.685*height))
        path.addCurve(to: CGPoint(x: 0.39221*width, y: 0.25*height), control1: CGPoint(x: 0.08333*width, y: 0.36496*height), control2: CGPoint(x: 0.225*width, y: 0.25*height))
        path.addLine(to: CGPoint(x: 0.4685*width, y: 0.25*height))
        path.addLine(to: CGPoint(x: 0.66775*width, y: 0.40929*height))
        path.addLine(to: CGPoint(x: 0.79167*width, y: 0))
        path.addLine(to: CGPoint(x: 0.79167*width, y: 0.39583*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.24871*width, y: 0.54167*height))
        path.addLine(to: CGPoint(x: 0.325*width, y: 0.38483*height))
        path.addCurve(to: CGPoint(x: 0.20833*width, y: 0.50108*height), control1: CGPoint(x: 0.25862*width, y: 0.4045*height), control2: CGPoint(x: 0.20833*width, y: 0.45112*height))
        path.closeSubpath()
        return path
    }
}
