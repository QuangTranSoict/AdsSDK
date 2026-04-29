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
            targets: ["AdsSDK", "AdsSDKPackageSupport"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "13.3.0"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-user-messaging-platform.git", exact: "3.1.0"),
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.2"),
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git", exact: "7.7.2"),
        .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package.git", exact: "8.1.1"),
        .package(url: "https://github.com/bytedance/AdsGlobalPackage.git", exact: "7.9.0-release.8"),
    ],
    targets: [
        .binaryTarget(
            name: "AdsSDK",
            url: "https://github.com/QuangTranSoict/AdsSDK/releases/download/1.0.5/AdsSDK.xcframework.zip",
            checksum: "eb8892cb6be6f1aaa7a648b2063aaae920fc3bc5d1b0135693005a97ced67a6b"
        ),
        .target(
            name: "AdsSDKPackageSupport",
            dependencies: [
                "AdsSDK",
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                .product(name: "GoogleUserMessagingPlatform", package: "swift-package-manager-google-user-messaging-platform"),
                .product(name: "AppLovinSDK", package: "applovin-max-swift-package"),
                .product(name: "VungleAdsSDK", package: "vungleadssdk-swiftpackagemanager"),
                .product(name: "MintegralAdSDK", package: "mintegraladsdk-swift-package"),
                .product(name: "AdsGlobalPackage", package: "adsglobalpackage"),
            ],
            path: "Sources/AdsSDKPackageSupport"
        ),
    ]
)
