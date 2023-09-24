//
//  SceneKitModel.swift
//  Created by hassan uriostegui on 2023
//

import Foundation
import S3DCoreModels

public class ScenekitModel: ObservableObject {
    @Published var item: MediaItem
    public init(item:MediaItem){
        self.item = item
    }
}

