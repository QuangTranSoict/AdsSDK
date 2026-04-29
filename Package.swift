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
            url: "https://github.com/QuangTranSoict/AdsSDK/releases/download/1.0.2/AdsSDK.xcframework.zip",
            checksum: "fdc18befe0c810fb11201e0bbf68e43ad12eeaecd4f38116f5056c205918ecff"
        ),
    ]
)
