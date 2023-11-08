//
//  Union.swift
//  pituku-ios-tes-1
//
//  Created by Hubert Daryanto on 08/11/23.
//

import SwiftUI

struct Union: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
        return path
    }
}

struct Union_Previews: PreviewProvider {
    static var previews: some View {
        Union()
    }
}
