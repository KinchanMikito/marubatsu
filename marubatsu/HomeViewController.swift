//
//  HomeViewController.swift
//  marubatsu
//
//  Created by 金森幹斗 on 2015/07/04.
//  Copyright (c) 2015年 Mikito Kanamori. All rights reserved.
//
import GoogleMobileAds

import UIKit

class HomeViewController: UIViewController,GADBannerViewDelegate, GADInterstitialDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NSLog("Google Mobile Ads SDK version: %@", GADRequest.sdkVersion())
        
        let bannerView:GADBannerView = getAdBannerView()
        self.view.addSubview(bannerView)
        
    }
    
    private func getAdBannerView() -> GADBannerView {
        var bannerView: GADBannerView = GADBannerView()
        bannerView = GADBannerView(adSize:kGADAdSizeBanner)
        bannerView.frame.size = CGSizeMake(self.view.frame.width, bannerView.frame.height)
        bannerView.frame.origin = CGPointMake(0, self.view.frame.size.height - bannerView.frame.height)
        bannerView.adUnitID = "ca-app-pub-7292261742464348/3145992317" // Enter Ad's ID here
        bannerView.delegate = self
        bannerView.rootViewController = self
        
        var request:GADRequest = GADRequest()
//        request.testDevices = [GAD_SIMULATOR_ID]
       bannerView.loadRequest(request)
//        
        return bannerView
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
