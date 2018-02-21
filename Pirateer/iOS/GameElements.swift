//
//  GameElements.swift
//  Pirateer
//
//  Created by Tennant on 2/20/18.
//  Copyright © 2018 Tennant Shaw. All rights reserved.
//

import SpriteKit

extension GameScene {
    func createTitle() {
        gameTitle = SKSpriteNode()
        gameTitle = SKSpriteNode(imageNamed: "PirateerTitleImage")
        gameTitle.size = CGSize(width: 300, height: 150)
        gameTitle.position = CGPoint(x: self.frame.midX, y: self.frame.midY + 100)
        gameTitle.setScale(0.5)
        self.addChild(gameTitle)
        gameTitle.run(SKAction.scale(to: 1.0, duration: 0.3))
    }
    
    func createSubtitle() {
        gameSubtitle = SKSpriteNode()
        gameSubtitle = SKSpriteNode(imageNamed: "PirateerSubtitleImage")
        gameSubtitle.size = CGSize(width: 200, height: 100)
        gameSubtitle.position = CGPoint(x: self.frame.midY + 125, y: self.frame.midX - 75)
        gameSubtitle.setScale(0.5)
        self.addChild(gameSubtitle)
        gameSubtitle.run(SKAction.scale(to: 1.0, duration: 0.3))
    }
    
    func createPlayButton() {
        playButton = SKSpriteNode()
        playButton = SKSpriteNode(imageNamed: "PlayButton")
        playButton.size = CGSize(width: 75, height: 50)
        playButton.position = CGPoint(x: self.frame.midY + 125, y: self.frame.midX - 198)
        playButton.zPosition = 5
        playButton.setScale(0.5)
        self.addChild(playButton)
        playButton.run(SKAction.scale(to: 1.0, duration: 0.3))
    }
    
}

extension BoardScene {
    func createBoard() {
        let board = SKSpriteNode(imageNamed: "PirateerBoard")
        board.anchorPoint = CGPoint.init(x: 0, y: 0)
        board.position = CGPoint(x: 0, y: 0)
        board.name = "gameBoard"
        board.size = (self.view?.bounds.size)!
        self.addChild(board)
    }
    
    func createCoin() -> SKSpriteNode {
        // Here I create a sprite node called pirateCoin and assign it a texture named "PirateCoin". Give it a size of 50x50. Then we position the coin in the middle of the screen.
        let pirateCoin = SKSpriteNode(imageNamed: "PirateCoin")
        pirateCoin.size = CGSize(width: 50, height: 50)
        pirateCoin.position = CGPoint(x: self.frame.midY, y: self.frame.midX)
        
        return pirateCoin
    }

}
