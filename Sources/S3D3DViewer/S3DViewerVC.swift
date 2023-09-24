//
//  SceneKitVC.swift
//  Created by hassan uriostegui on 2023
//

import Combine
import QuartzCore
import SceneKit
import UIKit

public class ScenekitVC: UIViewController {
    public var model: ScenekitModel?
  
    public func display(model:ScenekitModel) {
        guard
            let scene = try? SCNScene(url: model.item.url)
//            let materialImage = UIImage(contentsOfFile: item.textureURL.path)
        else {
            return
        }

        let nodes = scene.rootNode.childNodes
        guard nodes.count > 0 else {
            return
        }

        let objectNode = nodes[0]
        objectNode.scale = SCNVector3(x: 2, y: 2, z: 2)
        objectNode.position = SCNVector3(x: 0, y: 0, z: 0)
        objectNode.runAction(SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: 1, z: 0, duration: 10)))

        let material = objectNode.geometry?.firstMaterial
        material?.lightingModel = SCNMaterial.LightingModel.physicallyBased
//        material?.diffuse.contents = materialImage
        material?.cullMode = .back
        material?.transparencyMode = .dualLayer
        material?.isDoubleSided = true

        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(x: 0, y: 0, z: 15)
        scene.rootNode.addChildNode(cameraNode)

        let lightNode = SCNNode()
        lightNode.light = SCNLight()
        lightNode.light?.type = .ambient
        lightNode.position = SCNVector3(x: 0, y: 10, z: 35)
        scene.rootNode.addChildNode(lightNode)

        let scnView = SCNView(frame: view.frame)
        view.addSubview(scnView)

        scnView.scene = scene
        scnView.backgroundColor = .darkGray
        scnView.allowsCameraControl = true
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
    }

    public override var shouldAutorotate: Bool {
        false
    }

    public override var prefersStatusBarHidden: Bool {
        true
    }

    public override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        .portrait
    }

    public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
