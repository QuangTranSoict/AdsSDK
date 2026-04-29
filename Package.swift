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
            url: "https://github.com/QuangTranSoict/leansoft-ads-sdk/releases/download/Release_ver_1.0.1/AdsSDK.xcframework.zip",
            checksum: "d1df8caa7d5341feb6ca3590f585d3873cdda7ff1a1705e3bd5069ea7f197158"
        ),
    ]
)
