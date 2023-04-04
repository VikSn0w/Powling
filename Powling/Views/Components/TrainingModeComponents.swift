//
//  TrainingModeComponents.swift
//  Powling
//
//  Created by vit.pic on 03/04/23.
//

import Foundation
import SwiftUI
import UIKit

struct TrainingModeTitle: View {
    
    var body: some View {
        StrokeText(text: """
                            TRAINING\nMODE
                         """, width: 3, color: .red)
            .foregroundColor(.white)
            .font(
                .system(
                    size: 50,
                    weight: .heavy,
                    design: .rounded
                )
            )
            .shadow(radius: 3)
    }
}

struct TrainingMode_1: View {
    var body: some View {
        StrokeText(text: "CLASSIC MODE", width: 1.5, color: .red)
            .foregroundColor(.white)
            .font(
                .system(
                    size: 30,
                    weight: .semibold,
                    design: .rounded
                )
            )
            .shadow(radius: 3)
    }
}

struct TrainingMode_2: View {
    var body: some View {
        StrokeText(text: "ARCADE MODE", width: 1.5, color: .red)
            .foregroundColor(.white)
            .font(
                .system(
                    size: 30,
                    weight: .semibold,
                    design: .rounded
                )
            )
            .shadow(radius: 3)
    }
}


