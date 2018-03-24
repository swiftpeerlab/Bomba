import SpriteKit
import SceneKit

class PlayerNode: SKSpriteNode {

    init() {
        let texture = SKTexture(imageNamed: "Idle__000")
        super.init(texture: texture, color: .clear, size: texture.size())
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func beginAnimation() {
        let textureAtlas = SKTextureAtlas(named: "idleNinja")
        let numImages = textureAtlas.textureNames.count
        let frames = (0..<numImages).map { "Idle__00\($0)" }.map { textureAtlas.textureNamed($0) }
        let animate = SKAction.animate(with: frames, timePerFrame: 0.1)
        let forever = SKAction.repeatForever(animate)
        self.run(forever)
    }
}
