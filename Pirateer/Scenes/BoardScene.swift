//
//  BoardScene.swift
//  Pirateer
//
//  Created by Tennant on 2/20/18.
//  Copyright © 2018 Tennant Shaw. All rights reserved.
//

import SpriteKit

class BoardScene: SKScene {
    
    override func didMove(to view: SKView) {
        // createScene() needs to be created and implemented here
    }
    
    func createScene() {
        let background = SKSpriteNode(imageNamed: "PirateerBoard")
        background.anchorPoint = CGPoint.init(x: 0, y: 0)
        background.position = CGPoint(x: 0, y: 0)
        background.name = "gameBoard"
        background.size = (self.view?.bounds.size)!
        self.addChild(background)
    }

}
