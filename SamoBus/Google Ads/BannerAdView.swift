//
//  BannerAdView.swift
//  SamoBus
//
//  Created by Mihael Koic on 03.01.2025..
//

import SwiftUI
import GoogleMobileAds

struct BannerAdView: UIViewRepresentable {
    let adUnitID: String
    @Binding var refreshTrigger: Bool

    func makeUIView(context: Context) -> GADBannerView {
        let bannerView = GADBannerView(adSize: GADAdSizeBanner)
        bannerView.adUnitID = adUnitID
        bannerView.rootViewController = UIApplication.shared.windows.first?.rootViewController
        bannerView.load(GADRequest())
        return bannerView
    }

    func updateUIView(_ uiView: GADBannerView, context: Context) {
        // Ponovno učitavanje oglasa kad se `refreshTrigger` promijeni
        if refreshTrigger {
            uiView.load(GADRequest())
        }
    }
}


