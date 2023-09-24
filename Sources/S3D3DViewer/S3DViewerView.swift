//
//  SceneKitView.swift
//
//  Created by hassan uriostegui on 2023
//


import SwiftUI
import S3DCoreModels

public struct ScenekitView: View {
    @ObservedObject public var model: ScenekitModel
    public init(model:ScenekitModel){
        self.model = model
    }
    
    public var body: some View {
        ZStack {
            Text("Loading")

            ScenekitVC.ViewUI(model: model)

//            Column{
//                Text("data: \(worker.info.dataLenght ?? 0)")
//                Text("zipFile: \(worker.info.zipFile?.absoluteString ?? "")")
//                Text("zipContents: \(worker.info.zipContents?.absoluteString ?? "")")
//                Text("modelURL: \(worker.info.item?.modelURL.absoluteString ?? "")")
//                Text("textureURL: \(worker.info.item?.textureURL.absoluteString ?? "")")
//            }
        }
        .overlay(
            VStack {
                Button( action: {
                   
                }){
                    Text("Back")
                }
                Spacer()
            }
           
        )
        .edgesIgnoringSafeArea(.all)
        
       
    }
}

struct ScenekitView_Previews: PreviewProvider {
    static var previews: some View {
        guard let url = Bundle.main.url(forResource: "model", withExtension: "usdz") else {
            return AnyView(Text("Invalid 3d Model"))
        }
        let media = MediaItem(url:url)
        return AnyView(ScenekitView(model: ScenekitModel(item:media)))
    }
}
