# Base3DViewer
![Demo](https://github.com/hassanvfx/s3d-3dviewer/assets/425926/9496c1a9-87b7-4327-8210-b5279402586a)


Welcome to the Base3DViewer repository. This is a part of a larger demo project called the Simple3D Viewer. You can check out the main project [here](https://github.com/hassanvfx/simple3DViewer).

This framework was built with the ios-framework config tool. You can find more about the tool [here](https://github.com/hassanvfx/ios-framework).

## About Base3DViewer

In this module, we link the CoreUI and CoreModels to create a simple 3D Viewer. The module requires a completion callback and CoreModel.MediaItem struct pointing to the required model to be displayed.

The module implements the SceneKit View through a typical UIKit View Controller implementation that is Wrapped with a representable view.

The ViewModel is an observable object with a published MediaItem representing the 3D model. This can be parametrized during initialization and then passed to the upper level SwiftUI View Wrapper.

The bulk of the 3D configuration lies in the ViewController, specifically in the SceneKitVC.swift file.

## SceneKitVC.swift

This file contains the main configuration for the 3D viewer. It includes the setup for the 3D model, lighting, camera, and other important elements. The 3D model can be displayed by calling the `display(model:ScenekitModel)` function.

## Usage

To use this module, simply import it into your project and initialize it with the required 3D model. You can then call the `display(model:ScenekitModel)` function to display the model.

## Support

For any issues or queries, feel free to open an issue in this repository. We'll try to address it as soon as possible.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.
