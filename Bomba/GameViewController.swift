import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view = SKView()
        guard let scene = GKScene(fileNamed: "GameScene") else { return }
        guard let sceneNode = scene.rootNode as? GameScene else { return }
        sceneNode.scaleMode = .aspectFill
        guard let view = self.view as? SKView else { return }
        view.presentScene(sceneNode)
        view.ignoresSiblingOrder = true
        view.showsFPS = true
        view.showsNodeCount = true
    }
}
