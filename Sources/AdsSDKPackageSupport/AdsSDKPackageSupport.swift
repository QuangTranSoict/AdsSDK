// This wrapper target forces SwiftPM to resolve the modules imported by
// AdsSDK.swiftinterface, so consumers do not need to add them manually.

#if canImport(AppLovinSDK)
import AppLovinSDK
#endif

#if canImport(GoogleMobileAds)
import GoogleMobileAds
#endif

#if canImport(MTGSDK)
import MTGSDK
#endif

#if canImport(MolocoSDK)
import MolocoSDK
#endif

#if canImport(PAGAdSDK)
import PAGAdSDK
#endif

#if canImport(InMobiAdapter)
import InMobiAdapter
#endif

#if canImport(UserMessagingPlatform)
import UserMessagingPlatform
#endif

#if canImport(VungleAdsSDK)
import VungleAdsSDK
#endif

public enum AdsSDKPackageSupport {
}
