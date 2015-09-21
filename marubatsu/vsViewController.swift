//
//  vsViewController.swift
//  marubatsu
//
//  Created by 金森幹斗 on 2015/06/26.
//  Copyright (c) 2015年 Mikito Kanamori. All rights reserved.
//

import UIKit

import GoogleMobileAds

class vsViewController: UIViewController ,GADBannerViewDelegate ,GADInterstitialDelegate {
    
    @IBOutlet var lab1:UILabel!
    @IBOutlet var lab2:UILabel!
    @IBOutlet var lab3:UILabel!
    @IBOutlet var lab4:UILabel!
    @IBOutlet var lab5:UILabel!
    @IBOutlet var lab6:UILabel!
    @IBOutlet var lab7:UILabel!
    @IBOutlet var lab8:UILabel!
    @IBOutlet var lab0:UILabel!
    
    @IBOutlet var scoreLab:UILabel!
    
    @IBOutlet var winloseLab:UILabel!
    
    var squares:[Bool?] = [nil,nil,nil,nil,nil,nil,nil,nil,nil]
    
    var isTurnOf1:Bool = true
    
    var p1Array:[Int] = [100,100,100]
    
    var p2Array:[Int] = [100,100,100]
    
    var p1Score:Int = 0
    var p2Score:Int = 0
    
    var gameEnd:Bool = false
    
    @IBOutlet var mokkaibutton:UIButton!
    
    
    var _interstitial: GADInterstitial?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let bannerView:GADBannerView = getAdBannerView()
        self.view.addSubview(bannerView)
        
        mokkai()
        
        
        _interstitial = createAndLoadInterstitial()
        
    }
    
    @IBAction func tap0(){
        if squares[0] == nil && gameEnd == false{
            
            if isTurnOf1 == true{
                squares[0] = true
                lab0.text = "◯"
                if p1Array[2] != 100{
                    jikeshi()
                    squares[p1Array[2]] = nil
                }
                p1Array[2] = p1Array[1]
                p1Array[1] = p1Array[0]
                p1Array[0] = 0
                isTurnOf1 = false
                winloseLab.text = "xのターンです"
            }else{
                squares[0] = false
                lab0.text = "x"
                if p2Array[2] != 100{
                    jikeshi2()
                    squares[p2Array[2]] = nil
                }
                p2Array[2] = p2Array[1]
                p2Array[1] = p2Array[0]
                p2Array[0] = 0
                isTurnOf1 = true
                winloseLab.text = "◯のターンです"
            }
            
            check()
            
        }
    }
    @IBAction func tap8(){
        if squares[8] == nil && gameEnd == false{
            
            if isTurnOf1 == true{
                squares[8] = true
                lab8.text = "◯"
                if p1Array[2] != 100{
                    jikeshi()
                    squares[p1Array[2]] = nil
                }
                p1Array[2] = p1Array[1]
                p1Array[1] = p1Array[0]
                p1Array[0] = 8
                isTurnOf1 = false
                winloseLab.text = "xのターンです"
            }else{
                squares[8] = false
                lab8.text = "x"
                if p2Array[2] != 100{
                    jikeshi2()
                    squares[p2Array[2]] = nil
                }
                p2Array[2] = p2Array[1]
                p2Array[1] = p2Array[0]
                p2Array[0] = 8
                isTurnOf1 = true
                winloseLab.text = "◯のターンです"
            }
            
            check()
            
        }
    }
    @IBAction func tap1(){
        if squares[1] == nil && gameEnd == false{
            
            if isTurnOf1 == true{
                squares[1] = true
                lab1.text = "◯"
                if p1Array[2] != 100{
                    jikeshi()
                    squares[p1Array[2]] = nil
                }
                p1Array[2] = p1Array[1]
                p1Array[1] = p1Array[0]
                p1Array[0] = 1
                isTurnOf1 = false
                winloseLab.text = "xのターンです"
            }else{
                squares[1] = false
                lab1.text = "x"
                if p2Array[2] != 100{
                    jikeshi2()
                    squares[p2Array[2]] = nil
                }
                p2Array[2] = p2Array[1]
                p2Array[1] = p2Array[0]
                p2Array[0] = 1
                isTurnOf1 = true
                winloseLab.text = "◯のターンです"
            }
            
            check()
            
        }
    }
    @IBAction func tap2(){
        if squares[2] == nil && gameEnd == false{
            
            if isTurnOf1 == true{
                squares[2] = true
                lab2.text = "◯"
                if p1Array[2] != 100{
                    jikeshi()
                    squares[p1Array[2]] = nil
                }
                p1Array[2] = p1Array[1]
                p1Array[1] = p1Array[0]
                p1Array[0] = 2
                isTurnOf1 = false
                winloseLab.text = "xのターンです"
            }else{
                squares[2] = false
                lab2.text = "x"
                if p2Array[2] != 100{
                    jikeshi2()
                    squares[p2Array[2]] = nil
                }
                p2Array[2] = p2Array[1]
                p2Array[1] = p2Array[0]
                p2Array[0] = 2
                isTurnOf1 = true
                winloseLab.text = "◯のターンです"
            }
            
            check()
            
        }
    }
    @IBAction func tap3(){
        if squares[3] == nil && gameEnd == false{
            
            if isTurnOf1 == true{
                squares[3] = true
                lab3.text = "◯"
                if p1Array[2] != 100{
                    jikeshi()
                    squares[p1Array[2]] = nil
                }
                p1Array[2] = p1Array[1]
                p1Array[1] = p1Array[0]
                p1Array[0] = 3
                isTurnOf1 = false
                winloseLab.text = "xのターンです"
            }else{
                squares[3] = false
                lab3.text = "x"
                if p2Array[2] != 100{
                    jikeshi2()
                    squares[p2Array[2]] = nil
                }
                p2Array[2] = p2Array[1]
                p2Array[1] = p2Array[0]
                p2Array[0] = 3
                isTurnOf1 = true
                winloseLab.text = "◯のターンです"
            }
            
            check()
            
        }
    }
    @IBAction func tap4(){
        if squares[4] == nil && gameEnd == false{
            
            if isTurnOf1 == true{
                squares[4] = true
                lab4.text = "◯"
                if p1Array[2] != 100{
                    jikeshi()
                    squares[p1Array[2]] = nil
                }
                p1Array[2] = p1Array[1]
                p1Array[1] = p1Array[0]
                p1Array[0] = 4
                isTurnOf1 = false
                winloseLab.text = "xのターンです"
            }else{
                squares[4] = false
                lab4.text = "x"
                if p2Array[2] != 100{
                    jikeshi2()
                    squares[p2Array[2]] = nil
                }
                p2Array[2] = p2Array[1]
                p2Array[1] = p2Array[0]
                p2Array[0] = 4
                isTurnOf1 = true
                winloseLab.text = "◯のターンです"
            }
            
            check()
            
        }
    }
    @IBAction func tap5(){
        if squares[5] == nil && gameEnd == false{
            
            if isTurnOf1 == true{
                squares[5] = true
                lab5.text = "◯"
                if p1Array[2] != 100{
                    jikeshi()
                    squares[p1Array[2]] = nil
                }
                p1Array[2] = p1Array[1]
                p1Array[1] = p1Array[0]
                p1Array[0] = 5
                isTurnOf1 = false
                winloseLab.text = "xのターンです"
            }else{
                squares[5] = false
                lab5.text = "x"
                if p2Array[2] != 100{
                    jikeshi2()
                    squares[p2Array[2]] = nil
                }
                p2Array[2] = p2Array[1]
                p2Array[1] = p2Array[0]
                p2Array[0] = 5
                isTurnOf1 = true
                winloseLab.text = "◯のターンです"
            }
            
            check()
            
        }
    }
    @IBAction func tap6(){
        if squares[6] == nil && gameEnd == false{
            
            if isTurnOf1 == true{
                squares[6] = true
                lab6.text = "◯"
                if p1Array[2] != 100{
                    jikeshi()
                    squares[p1Array[2]] = nil
                }
                p1Array[2] = p1Array[1]
                p1Array[1] = p1Array[0]
                p1Array[0] = 6
                isTurnOf1 = false
                winloseLab.text = "xのターンです"
            }else{
                squares[6] = false
                lab6.text = "x"
                if p2Array[2] != 100{
                    jikeshi2()
                    squares[p2Array[2]] = nil
                }
                p2Array[2] = p2Array[1]
                p2Array[1] = p2Array[0]
                p2Array[0] = 6
                isTurnOf1 = true
                winloseLab.text = "◯のターンです"
            }
            
            check()
            
        }
    }
    @IBAction func tap7(){
        if squares[7] == nil && gameEnd == false{
            
            if isTurnOf1 == true{
                squares[7] = true
                lab7.text = "◯"
                if p1Array[2] != 100{
                    jikeshi()
                    squares[p1Array[2]] = nil
                }
                p1Array[2] = p1Array[1]
                p1Array[1] = p1Array[0]
                p1Array[0] = 7
                isTurnOf1 = false
                winloseLab.text = "xのターンです"
            }else{
                squares[7] = false
                lab7.text = "x"
                if p2Array[2] != 100{
                    jikeshi2()
                    squares[p2Array[2]] = nil
                }
                p2Array[2] = p2Array[1]
                p2Array[1] = p2Array[0]
                p2Array[0] = 7
                isTurnOf1 = true
                winloseLab.text = "◯のターンです"
            }
            
            check()
            
        }
    }
    func check(){
        
        for var i = 0; i <= 2; i++ {
            
            if squares[i*3] == false && squares[i*3 + 1] == false && squares[i*3 + 2] == false && isTurnOf1 == true{
                
                p2Score += 1
                
            }
            if squares[i] == false && squares[i+3] == false && squares[i+6] == false && isTurnOf1 == true{
                
                p2Score += 1
                
            }
            if squares[i*3] == true && squares[i*3 + 1] == true && squares[i*3 + 2] == true && isTurnOf1 == false{
                
                p1Score += 1
                
            }
            if squares[i] == true && squares[i+3] == true && squares[i+6] == true && isTurnOf1 == false{
                
                p1Score += 1
                
            }
            
        }
        
        
        if squares[0] == false && squares[4] == false && squares[8] == false && isTurnOf1 == true{
            
            p2Score += 1
            
        }else if squares[2] == false && squares[4] == false && squares[6] == false && isTurnOf1 == true{
            
            p2Score += 1
            
        }
        if squares[0] == true && squares[4] == true && squares[8] == true && isTurnOf1 == false{
            
            p1Score += 1
            
        }else if squares[2] == true && squares[4] == true && squares[6] == true && isTurnOf1 == true{
            
            p1Score += 1
            
        }
        
        scoreLab.text = String("\(p1Score) : \(p2Score)")
        
        
        if p1Score == 5{
            gameEnd = true
            winloseLab.text = "◯の勝ち！"
            mokkaibutton.hidden = false
        }
        if p2Score == 5{
            gameEnd = true
            winloseLab.text = "xの勝ち！"
            mokkaibutton.hidden = false        }
        
    }
    
    func jikeshi(){
        
        if p1Array[2] == 0{
            lab0.text = nil
        }else if p1Array[2] == 1{
            lab1.text = nil
        }else if p1Array[2] == 2{
            lab2.text = nil
        }else if p1Array[2] == 3{
            lab3.text = nil
        }else if p1Array[2] == 4{
            lab4.text = nil
        }else if p1Array[2] == 5{
            lab5.text = nil
        }else if p1Array[2] == 6{
            lab6.text = nil
        }else if p1Array[2] == 7{
            lab7.text = nil
        }else if p1Array[2] == 8{
            lab8.text = nil
        }
        
        winloseLab.text = "xのターンです"
        
    }
    
    func jikeshi2(){
        
        if p2Array[2] == 0{
            lab0.text = nil
        }else if p2Array[2] == 1{
            lab1.text = nil
        }else if p2Array[2] == 2{
            lab2.text = nil
        }else if p2Array[2] == 3{
            lab3.text = nil
        }else if p2Array[2] == 4{
            lab4.text = nil
        }else if p2Array[2] == 5{
            lab5.text = nil
        }else if p2Array[2] == 6{
            lab6.text = nil
        }else if p2Array[2] == 7{
            lab7.text = nil
        }else if p2Array[2] == 8{
            lab8.text = nil
        }
        
        winloseLab.text = "◯のターンです"
        
    }
    
    @IBAction func tapMokkai(){
        mokkai()
        
        if let isReady = _interstitial?.isReady {
            _interstitial?.presentFromRootViewController(self)
        }
        
    }
    
    func mokkai(){
        
        lab0.text = nil
        lab1.text = nil
        lab2.text = nil
        lab3.text = nil
        lab4.text = nil
        lab5.text = nil
        lab6.text = nil
        lab7.text = nil
        lab8.text = nil
        
        for var i = 0; i < 9; i++ {
            squares[i] = nil
        }
        p1Score = 0
        p2Score = 0
        
        for var i = 0; i < 3; i++ {
            
            p1Array[i] = 100
            p2Array[i] = 100
            
        }
        
        scoreLab.text = String("\(p1Score) : \(p2Score)")
        
        winloseLab.text = "◯のターンです"
        
        isTurnOf1 = true
        
        mokkaibutton.hidden = true
        
        gameEnd = false
        
    }
    
        

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    private func getAdBannerView() -> GADBannerView {
        var bannerView: GADBannerView = GADBannerView()
        bannerView = GADBannerView(adSize:kGADAdSizeBanner)
        bannerView.frame.size = CGSizeMake(self.view.frame.width, bannerView.frame.height)
        bannerView.frame.origin = CGPointMake(0, self.view.frame.size.height - bannerView.frame.height)
        bannerView.adUnitID = "ca-app-pub-7292261742464348/4091220311" // Enter Ad's ID here
        bannerView.delegate = self
        bannerView.rootViewController = self
        
        let request:GADRequest = GADRequest()
        //        request.testDevices = [GAD_SIMULATOR_ID]
        bannerView.loadRequest(request)
        //
        return bannerView
    }
    
    func createAndLoadInterstitial()->GADInterstitial {
        let interstitial = GADInterstitial(adUnitID: "ca-app-pub-7292261742464348/1442354718")
        interstitial?.delegate = self
        let gadRequest:GADRequest = GADRequest()
        //gadRequest.testDevices = [kGADSimulatorID]  // テスト時のみ
        interstitial?.loadRequest(gadRequest)
        
        
        return interstitial!
    }
    
}
