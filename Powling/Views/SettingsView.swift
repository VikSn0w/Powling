//
//  Settings.swift
//  Powling
//
//  Created by vit.pic on 30/03/23.
//

import Foundation
import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        StrokeText(text: "SETTINGS", width: 3, color: .red)
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
