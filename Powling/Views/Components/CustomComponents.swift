//
//  ExtraFuncs.swift
//  Powling
//
//  Created by vit.pic on 30/03/23.
//

import Foundation
import SwiftUI

struct StrokeText: View {
    let text: String
    let width: CGFloat
    let color: Color

    var body: some View {
        ZStack{
            ZStack{
                Text(text).offset(x:  width, y:  width).multilineTextAlignment(.center)
                Text(text).offset(x: -width, y: -width).multilineTextAlignment(.center)
                Text(text).offset(x: -width, y:  width).multilineTextAlignment(.center)
                Text(text).offset(x:  width, y: -width).multilineTextAlignment(.center)
            }
            .foregroundColor(color)
            Text(text).multilineTextAlignment(.center)
        }
    }
}
