//
//  ContentView.swift
//  Powling
//
//  Created by vit.pic on 28/03/23.
//

import SwiftUI
import CoreData
import UIKit

struct MainTitleView: View {
    private let rotationChangePublisher = NotificationCenter.default
            .publisher(for: UIDevice.orientationDidChangeNotification)
        @State private var isOrientationLocked = false
    
    var body: some View {
        NavigationView() {
            ZStack(alignment: .center){
                    Background()
                    VStack(spacing: 150){
                        Spacer()
                        MainTitle()
                    
                        ZStack (alignment: .bottom){
                            VStack(spacing: 50) {
                                NavigationLink(destination: GameView()) {
                                    Mode_1()
                                }

                                NavigationLink(destination: Test()) {
                                    Mode_2()
                                }
                                
                                VStack {
                                    
                                    SpacerPrinter(howManySpacers: 6)
                                    
                                    HStack() {
                                        
                                        SpacerPrinter(howManySpacers: 2)
                                        
                                        Rules()
                                        
                                        SpacerPrinter(howManySpacers: 2)

                                        Settings()
                                        
                                        SpacerPrinter(howManySpacers: 2)

                                    }
                                    Spacer()
                                }
                            }
                        }
                    }
                }.onReceive(rotationChangePublisher) { _ in
                    // This is called when there is a orientation change
                    // You can set back the orientation to the one you like even
                    // if the user has turned around their phone to use another
                    // orientation.
                    if isOrientationLocked {
                        changeOrientation(to: .portrait)
                }
            }
        }
    }
}



