// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AdsSDK",
    platforms: [
        .iOS(.v16),
    ],
    products: [
        .library(
            name: "AdsSDK",
            targets: ["AdsSDK"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "AdsSDK",
            url: "https://github.com/QuangTranSoict/AdsSDK/releases/download/1.0.3/AdsSDK.xcframework.zip",
            checksum: "58bcde7cd1a2f62bc1e4bb07eacd8a6fd3c8710641ac50bb5e5c5ba5ce4676c9"
        ),
    ]
)
