//
//  SharedComponents.swift
//  Powling
//
//  Created by vit.pic on 03/04/23.
//

import SwiftUI
import UIKit
import Foundation

struct Background: View {
    var body: some View {
        Image("Background_Title")
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
            .frame(width: UIScreen.main.bounds.width+20, height: UIScreen.main.bounds.height)
    }
}

struct SpacerPrinter: View {
    public var howManySpacers: Int = 0
    var body: some View {
        ForEach(0...self.howManySpacers, id: \.self){_ in
            Spacer()

        }
    }
}

struct BackButton: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body : some View {
        Button (action: { self.presentationMode.wrappedValue.dismiss() }) {
            HStack {
                ZStack{
                    Image(systemName: "arrowshape.backward.fill")
                        .symbolRenderingMode(.hierarchical)
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .shadow(radius: 3)
                    Image(systemName: "arrowshape.backward")
                        .symbolRenderingMode(.hierarchical)
                        .foregroundColor(.red)
                        .font(.system(size: 30))
                }
                StrokeText(text: "Back", width: 1.5, color: .red)
                    .foregroundColor(.white)
                    .font(
                        .system(
                            size: 20,
                            weight: .semibold,
                            design: .rounded
                        )
                    )
                    .shadow(radius: 3)
            }
        }
    }
}
