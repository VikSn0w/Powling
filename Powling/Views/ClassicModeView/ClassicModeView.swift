//
//  ContentView.swift
//  Powling_AR
//
//  Created by vit.pic on 01/04/23.
//

import SwiftUI
import RealityKit

struct ClassicModeView : View {
    var body: some View {
        var ArView = ARViewContainer()
        VStack{
            ArView.edgesIgnoringSafeArea(.all)
            Button(action: {ArView = ARViewContainer()}){
                Text("Reset")
            }
        }.navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: BackButton())
    }
}

struct ARScene {
}

struct ARViewContainer: UIViewRepresentable {
    var arView: ARView!
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)

        
        let bowlingAnchor = try! Experience.loadBowling()
        arView.scene.anchors.append(bowlingAnchor)
        
        
        return arView
    }

    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#if DEBUG
struct ClassicModeView_Previews : PreviewProvider {
    static var previews: some View {
        ClassicModeView()
    }
}
#endif
