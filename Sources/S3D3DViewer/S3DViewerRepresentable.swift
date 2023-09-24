//
//  ScenekitVC+Representable.swift
//  Created by hassan uriostegui on 2023
//

import SwiftUI

extension ScenekitVC {
    public struct ViewUI: UIViewControllerRepresentable {
        public var model: ScenekitModel
        public func makeUIViewController(context _: UIViewControllerRepresentableContext<ViewUI>) -> ScenekitVC {
            ScenekitVC()
        }

        public static func dismantleUIViewController(controller _: ScenekitVC, coordinator _: ()) {
//            controller.cancelObservers()
        }

        public func updateUIViewController(_ controller: ScenekitVC,
                                    context _: UIViewControllerRepresentableContext<ViewUI>)
        {
            controller.display(model: model)
        }
    }
}

