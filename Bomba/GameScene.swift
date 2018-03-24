import SpriteKit
import GameplayKit

class GameScene: SKScene {
    override func didMove(to view: SKView) {
        let ninja = PlayerNode()
        ninja.position = position
        addChild(ninja)
        ninja.beginAnimation()
    }
}
