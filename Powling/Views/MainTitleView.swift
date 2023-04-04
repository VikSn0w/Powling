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
        @State private var isOrientationLocked = true
    
    var body: some View {
        NavigationView() {
            ZStack(alignment: .center){
                    Background()
                    VStack(spacing: 150){
                        Spacer()
                        MainTitle()
                        ZStack (alignment: .bottom){
                            VStack(spacing: 50) {
                                NavigationLink(destination: TrainingModeView()) {
                                    Mode_1()
                                }

                                NavigationLink(destination: TrainingModeView()) {
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
                    if isOrientationLocked {
                        changeOrientation(to: .portrait)
                }
            }
        }
    }
}



struct MainTitleView_Previews: PreviewProvider {
    static var previews: some View {
        MainTitleView()
    }
}
