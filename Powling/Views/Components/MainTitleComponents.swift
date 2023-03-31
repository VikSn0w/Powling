//
//  View.swift
//  Powling
//
//  Created by vit.pic on 30/03/23.
//

import Foundation
import SwiftUI


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainTitleView()
    }
}


struct Background: View {
    var body: some View {
        Image("Background_Title")
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
            .frame(width: UIScreen.main.bounds.width+20, height: UIScreen.main.bounds.height)
    }
}

struct MainTitle: View {
    var body: some View {
        StrokeText(text: "POWLING", width: 3, color: .red)
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

struct Mode_1: View {
    var body: some View {
        StrokeText(text: "TRAINING MODE", width: 1.5, color: .red)
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

struct Mode_2: View {
    var body: some View {
        StrokeText(text: "MULTIPLAYER", width: 1.5, color: .red)
            .foregroundColor(.white)
            .font(
                .system(
                    size: 30,
                    weight: .semibold,
                    design: .rounded
                )
            ).shadow(radius: 3)
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


struct Settings: View {
    @State private var showingSheet = false
    var body: some View {
        Button(action: {showingSheet.toggle()}){
            ZStack{
                Image(systemName: "gearshape.fill")
                    .symbolRenderingMode(.hierarchical)
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                    .shadow(radius: 3)
                Image(systemName: "gearshape")
                    .symbolRenderingMode(.hierarchical)
                    .foregroundColor(.red)
                    .font(.system(size: 30))
            }
        }.sheet(isPresented: $showingSheet) {
            SettingsView()
        }
    }
}

struct Rules: View {
    @State private var showingSheet = false
    var body: some View {
        Button(action: {showingSheet.toggle()}){
            StrokeText(text: "RULES", width: 1.5, color: .red)
                .foregroundColor(.white)
                .font(
                    .system(
                        size: 20,
                        weight: .semibold,
                        design: .rounded
                    )
                ).shadow(radius: 3)
        }.sheet(isPresented: $showingSheet) {
            RulesView()
        }
    }
}

