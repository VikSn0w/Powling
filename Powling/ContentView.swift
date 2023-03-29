//
//  ContentView.swift
//  Powling
//
//  Created by vit.pic on 28/03/23.
//

import SwiftUI
import CoreData
import UIKit

struct ContentView: View {
   
    var body: some View {
        ZStack(alignment: .center){
            Background()
            VStack(spacing: 150){
                Spacer()
                MainTitle()
            
                ZStack (alignment: .bottom){
                    VStack(spacing: 50) {
                        
                        Mode_1()
                        Mode_2()
                        
                        VStack {
                            
                            SpacerPrinter(howManySpacers: 6)
                            
                            HStack() {
                                
                                SpacerPrinter(howManySpacers: 2)
                                
                                Label_1()
                                
                                SpacerPrinter(howManySpacers: 2)

                                Settings()
                                
                                SpacerPrinter(howManySpacers: 2)

                            }
                            Spacer()
                        }
                    }
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

public extension View {
    func fullBackground(imageName: String) -> some View {
       return background(
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
       )
    }
}

struct StrokeText: View {
    let text: String
    let width: CGFloat
    let color: Color

    var body: some View {
        ZStack{
            ZStack{
                Text(text).offset(x:  width, y:  width)
                Text(text).offset(x: -width, y: -width)
                Text(text).offset(x: -width, y:  width)
                Text(text).offset(x:  width, y: -width)
            }
            .foregroundColor(color)
            Text(text)
        }
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
        Button(action: {}){
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
}

struct Mode_2: View {
    var body: some View {
        Button(action: {}){
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
    var body: some View {
        Button(action: {}){
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
        }
    }
}

struct Label_1: View {
    var body: some View {
        Button(action: {}){
            StrokeText(text: "RULES", width: 1.5, color: .red)
                .foregroundColor(.white)
                .font(
                    .system(
                        size: 20,
                        weight: .semibold,
                        design: .rounded
                    )
                ).shadow(radius: 3)
        }
    }
}
