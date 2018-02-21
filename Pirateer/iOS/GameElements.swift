//
//  GameElements.swift
//  Pirateer
//
//  Created by Tennant on 2/20/18.
//  Copyright © 2018 Tennant Shaw. All rights reserved.
//

import SpriteKit

extension GameScene {
    func createCoin() -> SKSpriteNode {
        // Here I create a sprite node called pirateCoin and assign it a texture named "PirateCoin". Give it a size of 50x50. Then we position the coin in the middle of the screen.
        let pirateCoin = SKSpriteNode(imageNamed: "PirateCoin")
        pirateCoin.size = CGSize(width: 50, height: 50)
        pirateCoin.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
        
        return pirateCoin
    }
    
}
