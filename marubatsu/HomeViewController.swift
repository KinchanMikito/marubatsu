//
//  HomeViewController.swift
//  marubatsu
//
//  Created by 金森幹斗 on 2015/07/04.
//  Copyright (c) 2015年 Mikito Kanamori. All rights reserved.
//
import GoogleMobileAds
import Social

import UIKit

var newRecord:Bool = false

var level = 0

class HomeViewController: UIViewController,GADBannerViewDelegate, GADInterstitialDelegate {
    
    @IBOutlet var notificationIcon:UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NSLog("Google Mobile Ads SDK version: %@", GADRequest.sdkVersion())
        
        let bannerView:GADBannerView = getAdBannerView()
        self.view.addSubview(bannerView)
        
        if newRecord == true{
            notificationIcon.image = UIImage(named: "notification")
        }else{
            notificationIcon.image = nil
        }
        
    }
    
    @IBAction func showAlert(){
        
        level = Int(arc4random_uniform(3))
        
        let alertController = UIAlertController(title: "レベル選択", message: "プレイしたいレベルを選んでください", preferredStyle: .Alert)
        let tapEasy = UIAlertAction(title: "EASY", style: .Default) {
            action in
            
            level = 0
            
            let targetViewController = self.storyboard!.instantiateViewControllerWithIdentifier( "playfield" ) 
            targetViewController.modalTransitionStyle = UIModalTransitionStyle.FlipHorizontal
            self.presentViewController( targetViewController, animated: true, completion: nil)
            
        }
        let tapNormal = UIAlertAction(title: "NORMAL", style: .Default) {
            action in
            
            level = 1
            
            let targetViewController = self.storyboard!.instantiateViewControllerWithIdentifier( "playfield" ) 
            targetViewController.modalTransitionStyle = UIModalTransitionStyle.FlipHorizontal
            self.presentViewController( targetViewController, animated: true, completion: nil)
            
        }
        let tapHard = UIAlertAction(title: "HARD", style: .Default) {
            action in
            
            level = 2
            
            let targetViewController = self.storyboard!.instantiateViewControllerWithIdentifier( "playfield" ) 
            targetViewController.modalTransitionStyle = UIModalTransitionStyle.FlipHorizontal
            self.presentViewController( targetViewController, animated: true, completion: nil)

        }
        let tapCancel = UIAlertAction(title: "キャンセル", style: .Cancel) {
            action in
        }
        
        alertController.addAction(tapEasy)
        alertController.addAction(tapNormal)
        alertController.addAction(tapHard)
        alertController.addAction(tapCancel)
        presentViewController(alertController, animated: true, completion: nil)

        
    }
    
    @IBAction func tapRanking(){
        
        newRecord = false
     
    }
    
    @IBAction func tapHowtoplay(){
        
        let url = NSURL(string:"https://www.youtube.com/watch?v=F71YlDDCcss")
        let app:UIApplication = UIApplication.sharedApplication()
        app.openURL(url!)
        
    }
    
    private func getAdBannerView() -> GADBannerView {
        var bannerView: GADBannerView = GADBannerView()
        bannerView = GADBannerView(adSize:kGADAdSizeBanner)
        bannerView.frame.size = CGSizeMake(self.view.frame.width, bannerView.frame.height)
        bannerView.frame.origin = CGPointMake(0, self.view.frame.size.height - bannerView.frame.height)
        bannerView.adUnitID = "ca-app-pub-7292261742464348/3145992317" // Enter Ad's ID here
        bannerView.delegate = self
        bannerView.rootViewController = self
        
        let request:GADRequest = GADRequest()
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
