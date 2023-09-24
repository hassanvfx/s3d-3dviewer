//
//  ContentView.swift
//  DemoApp
//
//  Created by hassan uriostegui on 8/30/22.
//

import SwiftUI
import S3D3DViewer
import S3DCoreModels

struct ContentView: View {
    @ObservedObject var model:ScenekitModel
    init(){
        guard let url = Bundle.main.url(forResource: "model", withExtension: "usdz") else {
           fatalError()
        }
        let media = MediaItem(url:url)
        self.model =  ScenekitModel(item: media)
    }
   
    
    var body: some View {
       ScenekitView(model: model)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
