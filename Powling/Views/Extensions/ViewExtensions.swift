//
//  ViewExtensions.swift
//  Powling
//
//  Created by vit.pic on 30/03/23.
//

import Foundation
import SwiftUI

public extension View {
    func fullBackground(imageName: String) -> some View {
       return background(
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
       )
    }
    
    func changeOrientation(to orientation: UIInterfaceOrientation) {
        // tell the app to change the orientation
        UIDevice.current.setValue(orientation.rawValue, forKey: "orientation")
        print("Changing to", orientation.isPortrait ? "Portrait" : "Landscape")
    }
}

//public extension View {
//    @ViewBuilder
//    func forceRotation(orientation: UIInterfaceOrientationMask) -> some View {
//        self.onAppear() {
//            AppDelegate.orientationLock = orientation
//        }
//        // Reset orientation to previous setting
//        let currentOrientation = AppDelegate.orientationLock
//        self.onDisappear() {
//            AppDelegate.orientationLock = currentOrientation
//        }
//    }
//}
