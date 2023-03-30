//
//  RulesView.swift
//  Powling
//
//  Created by vit.pic on 30/03/23.
//

import Foundation
import SwiftUI

struct RulesView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack(alignment: .center){
            StrokeText(text: "RULES", width: 3, color: .red)
                .foregroundColor(.white)
                .font(
                    .system(
                        size: 55,
                        weight: .heavy,
                        design: .rounded
                    )
                )
            .shadow(radius: 3)
        }
    }
}

