//
//  InterstitialAdManager.swift
//  SamoBus
//
//  Created by Mihael Koic on 03.01.2025..
//

import GoogleMobileAds
import UIKit

class InterstitialAdManager: NSObject, GADFullScreenContentDelegate {
    private var interstitial: GADInterstitialAd?
    var adUnitID: String

    init(adUnitID: String) {
        self.adUnitID = adUnitID
        super.init()
        loadInterstitial()
    }

    func loadInterstitial() {
        let request = GADRequest()
        GADInterstitialAd.load(withAdUnitID: adUnitID, request: request) { ad, error in
            if let error = error {
                print("Greška pri učitavanju interstitial oglasa: \(error.localizedDescription)")
                return
            }
            self.interstitial = ad
            self.interstitial?.fullScreenContentDelegate = self
        }
    }

    func showAd(from viewController: UIViewController) {
        if let interstitial = interstitial {
            interstitial.present(fromRootViewController: viewController)
        } else {
            print("Oglas nije spreman")
        }
    }
}
