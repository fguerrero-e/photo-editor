// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "iOSPhotoEditor",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "iOSPhotoEditor", targets: ["iOSPhotoEditor"]),
    ],
    targets: [
        .target(
            name: "iOSPhotoEditor",
            path: "iOSPhotoEditor",
            resources: [
                .copy("PhotoEditorViewController.xib"),
                .copy("StickersViewController.xib"),
                .process("LaunchScreen.storyboard"),
                .process("PhotoCropEditorBorder.png"),
                .process("PhotoCropEditorBorder@2x.png"),
                .process("PhotoCropEditorBorder@3x.png"),
                .copy("icomoon.ttf"),
            ]
        ),
    ]
)
