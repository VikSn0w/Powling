//
//  SwiftUIView.swift
//  Powling
//
//  Created by vit.pic on 30/03/23.

import SpriteKit
import AVKit

class GameSceneView: SKScene {
    private var audioPlayer: AVAudioPlayer!
    
    override func didMove(to view: SKView) {
    
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let touchLocation = touch!.location(in: self)
        let node = self.atPoint(touchLocation)
        if node.name == "massimo"{
//                playSoundFromURL()
        } else {
            
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let touchLocation = touch!.location(in: self)
        let node = self.atPoint(touchLocation)
        if node.name == "massimo"{
            
            
                let scale = SKAction.scale(by: 2, duration: 0.6)
                let fade = SKAction.fadeOut(withDuration: 0.5)
                let hide = SKAction.hide()
                let move = SKAction.moveBy(x: 100, y: 100, duration: 0.3)
                let sequence = SKAction.sequence([move, scale, fade, hide])
                node.run(sequence)
            
            
        } else {
            
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let touchLocation = touch!.location(in: self)
        let touchedNode = self.atPoint(touchLocation)
        if touchedNode.name == "massimo" {
            touchedNode.position = touchLocation
        }
    }
    
    private func playSoundFromURL() -> AVAudioPlayer
    {
        let sound = Bundle.main.path(forResource: "dajeroma", ofType: "mp3")
        self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        self.audioPlayer.prepareToPlay()
        self.audioPlayer.play()
        return audioPlayer
    }
    
    private func audioPlayerDidFinishPlaying(player: AVAudioPlayer!, successfully flag: Bool, playSequence: () -> Void) {
        //You can stop the audio
        player.stop()

    }
}
