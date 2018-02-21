//
//  GameScene.swift
//  Pirateer
//
//  Created by Tennant on 2/1/18.
//  Copyright © 2018 Tennant Shaw. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    var gameTitle = SKSpriteNode()
    var gameSubtitle = SKSpriteNode()
    var playButton = SKSpriteNode()
    var buttonBackground = SKSpriteNode()
    //  TODO:  var logoImage = SKSpriteNode() need to find an image to use before implementing this.
    
    override func didMove(to view: SKView) {
        createScene()
    }
    
    func createScene() {
        let background = SKSpriteNode(imageNamed: "PirateerOpeningSceneBackground")
        background.anchorPoint = CGPoint.init(x: 0, y: 0)
        background.position = CGPoint(x: 0, y: 0)
        background.name = "gameBoard"
        background.size = (self.view?.bounds.size)!
        self.addChild(background)
        
        createTitle()
        createSubtitle()
        createPlayButton()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            if playButton.contains(location) {
                let reveal = SKTransition.reveal(with: .down, duration: 1)
                let newScene = BoardScene(size: CGSize(width: 1334, height: 750))
                scene?.view?.presentScene(newScene, transition: reveal)
            }
        }
    }

}
