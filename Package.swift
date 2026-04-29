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
        .package(url: "https://github.com/moloco/moloco-sdk-ios-spm.git", exact: "4.6.0"),
        .package(url: "https://github.com/googleads/googleads-mobile-ios-mediation-inmobi.git", exact: "11.2.000"),
    ],
    targets: [
        .binaryTarget(
            name: "AdsSDK",
            url: "https://github.com/QuangTranSoict/AdsSDK/releases/download/1.0.10/AdsSDK.xcframework.zip",
            checksum: "5a918bb3d4b27a75481b360219aacbe62ed528fd53e25501f862dcc4b4679d7e"
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
                .product(name: "MolocoSDK", package: "moloco-sdk-ios-spm"),
                .product(name: "InMobiAdapterTarget", package: "googleads-mobile-ios-mediation-inmobi"),
            ],
            path: "Sources/AdsSDKPackageSupport"
        ),
    ]
)
