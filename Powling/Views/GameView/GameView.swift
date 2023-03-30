//
//  GameView.swift
//  Powling
//
//  Created by vit.pic on 30/03/23.
//

import SpriteKit
import SwiftUI

struct GameView: View {
    let skView = SKView()

    init() {
        if let scene = SKScene(fileNamed: "GameScene") {
            skView.presentScene(scene)
        }
    }

    var body: some View {
        GameView()
            .frame(width: 300, height: 600)
    }
}

struct SKSceneView: UIViewRepresentable {
    func makeUIView(context: Context) -> SKView {
        return GameView().skView
    }

    func updateUIView(_ uiView: SKView, context: Context) {}
}

