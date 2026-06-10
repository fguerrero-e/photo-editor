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
                .process("PhotoEditorViewController.xib"),
                .process("ColorCollectionViewCell.xib"),
                .process("EmojiCollectionViewCell.xib"),
                .process("StickerCollectionViewCell.xib"),
                .process("StickersViewController.xib"),
                .process("LaunchScreen.storyboard"),
                .process("PhotoCropEditorBorder.png"),
                .process("PhotoCropEditorBorder@2x.png"),
                .process("PhotoCropEditorBorder@3x.png"),
                .copy("icomoon.ttf"),
            ]
        ),
    ]
)
