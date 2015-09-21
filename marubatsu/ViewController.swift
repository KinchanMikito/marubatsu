//
//  ViewController.swift
//  marubatsu
//
//  Created by 金森幹斗 on 2015/05/22.
//  Copyright (c) 2015年 Mikito Kanamori. All rights reserved.
//

import UIKit
import Social

import GoogleMobileAds

let ud = NSUserDefaults.standardUserDefaults()

var normal1:Int = ud.integerForKey("zero")
var normal2:Int = ud.integerForKey("one")
var normal3:Int = ud.integerForKey("two")
var normal4:Int = ud.integerForKey("three")
var normal5:Int = ud.integerForKey("four")

var easy1:Int = ud.integerForKey("zeroe")
var easy2:Int = ud.integerForKey("onee")
var easy3:Int = ud.integerForKey("twoe")
var easy4:Int = ud.integerForKey("threee")
var easy5:Int = ud.integerForKey("foure")

var hard1:Int = ud.integerForKey("zeroh")
var hard2:Int = ud.integerForKey("oneh")
var hard3:Int = ud.integerForKey("twoh")
var hard4:Int = ud.integerForKey("threeh")
var hard5:Int = ud.integerForKey("fourh")

var wins:Int = 0


class ViewController: UIViewController ,GADBannerViewDelegate ,GADInterstitialDelegate {
    
    @IBOutlet var lab1:UILabel!
    @IBOutlet var lab2:UILabel!
    @IBOutlet var lab3:UILabel!
    @IBOutlet var lab4:UILabel!
    @IBOutlet var lab5:UILabel!
    @IBOutlet var lab6:UILabel!
    @IBOutlet var lab7:UILabel!
    @IBOutlet var lab8:UILabel!
    @IBOutlet var lab9:UILabel!
    
    @IBOutlet var lab:UILabel!
    
    @IBOutlet var winsLab:UILabel!
    
    @IBOutlet var scoreLab:UILabel!
    
    var squares:[Bool?] = [nil,nil,nil,nil,nil,nil,nil,nil,nil]
    
    var clear:Bool? = nil
    
    var comNum:Int = 0
    
    var hajikko:[Int] = [0,2,6,8]
    
    var aida:[Int] = [1,3,5,7]
    
    var highscoresNormal = [normal1,normal2,normal3,normal4,normal5]
    
    var highscoresEasy = [easy1,easy2,easy3,easy4,easy5]
    
    var highscoresHard = [hard1,hard2,hard3,hard4,hard5]
    
    @IBOutlet var mokkaiButton:UIButton!
    
    var myArray:[Int] = [100,100,100]
    
    var CPUArray:[Int] = [100,100,100]
    
    var isAITurn:Bool = false
    
    
    var myScore:Int = 0
    var CPUScore:Int = 0
    
    
    var _interstitial: GADInterstitial?
    
    let levelname = ["EASY","NORMAL","HARD"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mokkai()
        
        let bannerView:GADBannerView = getAdBannerView()
        self.view.addSubview(bannerView)
        
        
        _interstitial = createAndLoadInterstitial()
        
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tap1(){
        if squares[0] == nil && clear == nil && isAITurn == false{
            lab1.text = "0"
            squares[0] = true
            if myArray[2] != 100{
                jikeshi()
                squares[myArray[2]] = nil
            }
            myArray[2] = myArray[1]
            myArray[1] = myArray[0]
            myArray[0] = 0
            check()
            isAITurn = true
            NSRunLoop.mainRunLoop().runUntilDate(NSDate(timeIntervalSinceNow: 0.5))
            if myScore != 5{
                aite()
                check()
            }
            
            isAITurn = false
        }
    }
    @IBAction func tap2(){
        if squares[1] == nil && clear == nil && isAITurn == false{
            lab2.text = "0"
            squares[1] = true
            if myArray[2] != 100{
                jikeshi()
                squares[myArray[2]] = nil
            }
            myArray[2] = myArray[1]
            myArray[1] = myArray[0]
            myArray[0] = 1
            check()
            isAITurn = true
            NSRunLoop.mainRunLoop().runUntilDate(NSDate(timeIntervalSinceNow: 0.5))
            if myScore != 5{
                aite()
                check()
            }
            
            isAITurn = false
        }
    }
    @IBAction func tap3(){
        if squares[2] == nil && clear == nil && isAITurn == false{
            lab3.text = "0"
            squares[2] = true
            if myArray[2] != 100{
                jikeshi()
                squares[myArray[2]] = nil
            }
            myArray[2] = myArray[1]
            myArray[1] = myArray[0]
            myArray[0] = 2
            check()
            isAITurn = true
            NSRunLoop.mainRunLoop().runUntilDate(NSDate(timeIntervalSinceNow: 0.5))
            if myScore != 5{
                aite()
                check()
            }
            
            isAITurn = false
        }
    }
    @IBAction func tap4(){
        if squares[3] == nil && clear == nil && isAITurn == false{
            lab4.text = "0"
            squares[3] = true
            if myArray[2] != 100{
                jikeshi()
                squares[myArray[2]] = nil
            }
            myArray[2] = myArray[1]
            myArray[1] = myArray[0]
            myArray[0] = 3
            check()
            isAITurn = true
            NSRunLoop.mainRunLoop().runUntilDate(NSDate(timeIntervalSinceNow: 0.5))
            if myScore != 5{
                aite()
                check()
            }
            
            isAITurn = false
        }
    }
    @IBAction func tap5(){
        if squares[4] == nil && clear == nil && isAITurn == false{
            lab5.text = "0"
            squares[4] = true
            if myArray[2] != 100{
                jikeshi()
                squares[myArray[2]] = nil
            }
            myArray[2] = myArray[1]
            myArray[1] = myArray[0]
            myArray[0] = 4
            check()
            isAITurn = true
            NSRunLoop.mainRunLoop().runUntilDate(NSDate(timeIntervalSinceNow: 0.5))
            if myScore != 5{
                aite()
                check()
            }
            
            isAITurn = false
        }
    }
    @IBAction func tap6(){
        if squares[5] == nil && clear == nil && isAITurn == false{
            lab6.text = "0"
            squares[5] = true
            if myArray[2] != 100{
                jikeshi()
                squares[myArray[2]] = nil
            }
            myArray[2] = myArray[1]
            myArray[1] = myArray[0]
            myArray[0] = 5
            check()
            isAITurn = true
            NSRunLoop.mainRunLoop().runUntilDate(NSDate(timeIntervalSinceNow: 0.5))
            if myScore != 5{
                aite()
                check()
            }
            
            isAITurn = false
        }
    }
    @IBAction func tap7(){
        if squares[6] == nil && clear == nil && isAITurn == false{
            lab7.text = "0"
            squares[6] = true
            if myArray[2] != 100{
                jikeshi()
                squares[myArray[2]] = nil
            }
            myArray[2] = myArray[1]
            myArray[1] = myArray[0]
            myArray[0] = 6
            check()
            isAITurn = true
            NSRunLoop.mainRunLoop().runUntilDate(NSDate(timeIntervalSinceNow: 0.5))
            if myScore != 5{
                aite()
                check()
            }
            
            isAITurn = false
        }
    }
    @IBAction func tap8(){
        if squares[7] == nil && clear == nil && isAITurn == false{
            lab8.text = "0"
            squares[7] = true
            if myArray[2] != 100{
                jikeshi()
                squares[myArray[2]] = nil
            }
            myArray[2] = myArray[1]
            myArray[1] = myArray[0]
            myArray[0] = 7
            check()
            isAITurn = true
            NSRunLoop.mainRunLoop().runUntilDate(NSDate(timeIntervalSinceNow: 0.5))
            if myScore != 5{
                aite()
                check()
            }
            
            isAITurn = false
        }
    }
    @IBAction func tap9(){
        if squares[8] == nil && clear == nil && isAITurn == false{
            lab9.text = "0"
            squares[8] = true
            if myArray[2] != 100{
                jikeshi()
                squares[myArray[2]] = nil
            }
            myArray[2] = myArray[1]
            myArray[1] = myArray[0]
            myArray[0] = 8
            check()
            isAITurn = true
            NSRunLoop.mainRunLoop().runUntilDate(NSDate(timeIntervalSinceNow: 0.5))
            if myScore != 5{
                aite()
                check()
            }
            
            isAITurn = false
        }
    }

    func check(){
        
        for var i = 0; i <= 2; i++ {
            
            if squares[i*3] == false && squares[i*3 + 1] == false && squares[i*3 + 2] == false && isAITurn == true{ //横-相手
                CPUScore += 1
            }
            if squares[i] == false && squares[i+3] == false && squares[i+6] == false && isAITurn == true{ //縦-相手
                CPUScore += 1
            }
            if squares[i*3] == true && squares[i*3 + 1] == true && squares[i*3 + 2] == true && isAITurn == false{ //横-自分
                myScore += 1
            }
            if squares[i] == true && squares[i+3] == true && squares[i+6] == true && isAITurn == false{ //縦-自分
                myScore += 1
            }
            
        }
        
        
        if squares[0] == false && squares[4] == false && squares[8] == false && isAITurn == true{//ナナメ-相手
            CPUScore += 1
        }else if squares[2] == false && squares[4] == false && squares[6] == false && isAITurn == true{//ナナメ-相手
            CPUScore += 1
        }
        if squares[0] == true && squares[4] == true && squares[8] == true && isAITurn == false{//ナナメ-自分
            myScore += 1
        }else if squares[2] == true && squares[4] == true && squares[6] == true && isAITurn == false{//ナナメ-自分
            myScore += 1
        }
        
        
        scoreLab.text = String("\(myScore) : \(CPUScore)")
        
        
        if myScore == 5 && isAITurn == false{
            lab.text = "勝ち!"
            mokkaiButton.hidden = false
            if comNum == 0{
                lab1.text = nil
            }else if comNum == 1{
                lab2.text = nil
            }else if comNum == 2{
                lab3.text = nil
            }else if comNum == 3{
                lab4.text = nil
            }else if comNum == 4{
                lab5.text = nil
            }else if comNum == 5{
                lab6.text = nil
            }else if comNum == 6{
                lab7.text = nil
            }else if comNum == 7{
                lab8.text = nil
            }else if comNum == 8{
                lab9.text = nil
            }
            wins++
            winsLab.text = String("\(wins)連勝中!")
            clear = true
        }else if CPUScore == 5 && isAITurn == true{
            lab.text = "負け..."
            mokkaiButton.hidden = false
            ranking(wins)
            wins = 0
            winsLab.text = String("\(wins)連勝中!")
            clear = false
        }
        
        
        
        
    }
    
    @IBAction func tapMokkai(){
        
        mokkai()
        
        if let isReady = _interstitial?.isReady {
            _interstitial?.presentFromRootViewController(self)
        }
        
    }
    
    func aite(){
        if level == 0{
            comNum = hanteiEasy()
            
        }
        if level == 1{
            comNum = hanteiNormal()
        }
        if level == 2{
            comNum = hanteiHard()
        }
        squares[comNum] = false
        
        if comNum == 0{
            lab1.text = "x"
        }
        if comNum == 1{
            lab2.text = "x"
        }
        if comNum == 2{
            lab3.text = "x"
        }
        if comNum == 3{
            lab4.text = "x"
        }
        if comNum == 4{
            lab5.text = "x"
        }
        if comNum == 5{
            lab6.text = "x"
        }
        if comNum == 6{
            lab7.text = "x"
        }
        if comNum == 7{
            lab8.text = "x"
        }
        if comNum == 8{
            lab9.text = "x"
        }
        
        
        CPUArray[2] = CPUArray[1]
        CPUArray[1] = CPUArray[0]
        CPUArray[0] = comNum
    }
    
    func hanteiEasy() -> Int{
        
        let lastNum = CPUArray[2]
        
        if CPUArray[2] != 100{
            jikeshi2()
            squares[CPUArray[2]] = nil
        }
        
        for var i = 0; i <= 2; i++ {
            
            if squares[i*3] == false && squares[i*3 + 1] == false && squares[i*3 + 2] == nil && lastNum != i*3 + 2{
                return i*3 + 2
            }else if squares[i*3] == false && squares[i*3 + 2] == false && squares[i*3 + 1] == nil && lastNum != i*3 + 1{
                return i*3 + 1
            }else if squares[i*3 + 1] == false && squares[i*3 + 2] == false && squares[i*3] == nil && lastNum != i*3{
                return i*3
            }else if squares[i] == false && squares[i+3] == false && squares[i+6] == nil && lastNum != i+6{
                return i+6
            }else if squares[i] == false && squares[i+6] == false && squares[i+3] == nil && lastNum != i+3{
                return i+3
            }else if squares[i+6] == false && squares[i+3] == false && squares[i] == nil && lastNum != i{
                return i
            }else if squares[0] == false && squares[4] == false && squares[8] == nil && lastNum != 8{
                return 8
            }else if squares[0] == false && squares[8] == false && squares[4] == nil && lastNum != 4{
                return 4
            }else if squares[8] == false && squares[4] == false && squares[0] == nil && lastNum != 0{
                return 0
            }else if squares[2] == false && squares[4] == false && squares[6] == nil && lastNum != 6{
                return 6
            }else if squares[2] == false && squares[6] == false && squares[4] == nil && lastNum != 4{
                return 4
            }else if squares[6] == false && squares[4] == false && squares[2] == nil && lastNum != 2{
                return 2
            }
        }
        
        var randomNum = Int(arc4random_uniform(9))
        
        while squares[randomNum] != nil || lastNum == randomNum{
            
            randomNum = Int(arc4random_uniform(9))
            
        }
        
        return randomNum
        
    }
    
    func hanteiNormal() -> Int {
        
        let lastNum = CPUArray[2]
        
        if CPUArray[2] != 100{
            jikeshi2()
            squares[CPUArray[2]] = nil
        }
        
        for var i = 0; i <= 2; i++ {
            
            if squares[i*3] == false && squares[i*3 + 1] == false && squares[i*3 + 2] == nil && lastNum != i*3 + 2{
                return i*3 + 2
            }else if squares[i*3] == false && squares[i*3 + 2] == false && squares[i*3 + 1] == nil && lastNum != i*3 + 1{
                return i*3 + 1
            }else if squares[i*3 + 1] == false && squares[i*3 + 2] == false && squares[i*3] == nil && lastNum != i*3{
                return i*3
            }else if squares[i] == false && squares[i+3] == false && squares[i+6] == nil && lastNum != i+6{
                return i+6
            }else if squares[i] == false && squares[i+6] == false && squares[i+3] == nil && lastNum != i+3{
                return i+3
            }else if squares[i+6] == false && squares[i+3] == false && squares[i] == nil && lastNum != i{
                return i
            }else if squares[0] == false && squares[4] == false && squares[8] == nil && lastNum != 8{
                return 8
            }else if squares[0] == false && squares[8] == false && squares[4] == nil && lastNum != 4{
                return 4
            }else if squares[8] == false && squares[4] == false && squares[0] == nil && lastNum != 0{
                return 0
            }else if squares[2] == false && squares[4] == false && squares[6] == nil && lastNum != 6{
                return 6
            }else if squares[2] == false && squares[6] == false && squares[4] == nil && lastNum != 4{
                return 4
            }else if squares[6] == false && squares[4] == false && squares[2] == nil && lastNum != 2{
                return 2
            }
        }
        
        for var i = 0; i <= 2; i++ {
            if squares[i*3] == true && squares[i*3 + 1] == true && squares[i*3 + 2] == nil && lastNum != i*3 + 2{
                return i*3 + 2
            }else if squares[i*3] == true && squares[i*3 + 2] == true && squares[i*3 + 1] == nil && lastNum != i*3 + 1{
                return i*3 + 1
            }else if squares[i*3 + 1] == true && squares[i*3 + 2] == true && squares[i*3] == nil && lastNum != i*3{
                return i*3
            }else if squares[i] == true && squares[i+3] == true && squares[i+6] == nil && lastNum != i+6{
                return i+6
            }else if squares[i] == true && squares[i+6] == true && squares[i+3] == nil && lastNum != i+3{
                return i+3
            }else if squares[i+6] == true && squares[i+3] == true && squares[i] == nil && lastNum != i{
                return i
            }else if squares[0] == true && squares[4] == true && squares[8] == nil && lastNum != 8{
                return 8
            }else if squares[0] == true && squares[8] == false && squares[4] == nil && lastNum != 4{
                return 4
            }else if squares[8] == true && squares[4] == true && squares[0] == nil && lastNum != 0{
                return 0
            }else if squares[2] == true && squares[4] == true && squares[6] == nil && lastNum != 6{
                return 6
            }else if squares[2] == true && squares[6] == true && squares[4] == nil && lastNum != 4{
                return 4
            }else if squares[6] == true && squares[4] == true && squares[2] == nil && lastNum != 2{
                return 2
            }
        }
        
        if squares[4] == nil && lastNum != 4{
            
            return 4
            
        }
        
        if lastNum == 100{
            
            var randomNum = hajikko[Int(arc4random_uniform(UInt32(hajikko.count)))]
            
            while squares[randomNum] != nil{
                
                randomNum = hajikko[Int(arc4random_uniform(UInt32(hajikko.count)))]
                
            }
            
            return randomNum
            
        }
        
        if squares[0] != nil && squares[2] != nil && squares[6] != nil && squares[8] != nil{
            
            var a = aida[Int(arc4random_uniform(UInt32(aida.count)))]
            
            while squares[a] != nil || lastNum == a{
                
                a = aida[Int(arc4random_uniform(UInt32(aida.count)))]
                
            }
            
            return  a
            
        }
        
        var randomNum = hajikko[Int(arc4random_uniform(UInt32(hajikko.count)))]
        
        while squares[randomNum] != nil || lastNum == randomNum{
            
            
            
            randomNum = hajikko[Int(arc4random_uniform(UInt32(hajikko.count)))]
            
            if squares[0] != nil && squares[2] != nil && squares[6] != nil && lastNum == 8{
                
                var a = aida[Int(arc4random_uniform(UInt32(aida.count)))]
                
                while squares[a] != nil || lastNum == a{
                    
                    a = aida[Int(arc4random_uniform(UInt32(aida.count)))]
                    
                }
                
                return  a
                
            }
            
            if squares[0] != nil && squares[2] != nil && squares[8] != nil && lastNum == 6{
                
                var a = aida[Int(arc4random_uniform(UInt32(aida.count)))]
                
                while squares[a] != nil || lastNum == a{
                    
                    a = aida[Int(arc4random_uniform(UInt32(aida.count)))]
                    
                }
                
                return  a

                
            }
            
            if squares[0] != nil && squares[8] != nil && squares[6] != nil && lastNum == 2{
                
                var a = aida[Int(arc4random_uniform(UInt32(aida.count)))]
                
                while squares[a] != nil || lastNum == a{
                    
                    a = aida[Int(arc4random_uniform(UInt32(aida.count)))]
                    
                }
                
                return  a
                
            }
            
            if squares[8] != nil && squares[2] != nil && squares[6] != nil && lastNum == 0{
                
                var a = aida[Int(arc4random_uniform(UInt32(aida.count)))]
                
                while squares[a] != nil || lastNum == a{
                    
                    a = aida[Int(arc4random_uniform(UInt32(aida.count)))]
                    
                }
                
                return  a
                
            }
        }
        
        return randomNum
        
    }
    
    func hanteiHard() -> Int {
        
        let lastNum = CPUArray[2]
        
        if CPUArray[2] != 100{
            jikeshi2()
            squares[CPUArray[2]] = nil
        }
        
        let maruLast = myArray[2]
        
        if myArray[2] != 100{
            
            squares[myArray[2]] = nil
            
        }
        /////////////////////////////////////////////////////////////////////////////////////////////////
        
        var playerReachNum = 0
        
        var isReachPlayer = false
        
        //リーチを検出
        
        for var i = 0; i <= 2; i++ {
            if squares[i*3] == true && squares[i*3 + 1] == true && squares[i*3 + 2] == nil && lastNum != i*3 + 2 && maruLast != i*3 + 2{
                playerReachNum = i*3 + 2
                isReachPlayer = true
                break
            }else if squares[i*3] == true && squares[i*3 + 2] == true && squares[i*3 + 1] == nil && lastNum != i*3 + 1 && maruLast != i*3 + 1{
                playerReachNum = i*3 + 1
                isReachPlayer = true
                break
            }else if squares[i*3 + 1] == true && squares[i*3 + 2] == true && squares[i*3] == nil && lastNum != i*3 && maruLast != i*3{
                playerReachNum = i*3
                isReachPlayer = true
                break
            }else if squares[i] == true && squares[i+3] == true && squares[i+6] == nil && lastNum != i+6 && maruLast != i+6{
                playerReachNum = i+6
                isReachPlayer = true
                break
            }else if squares[i] == true && squares[i+6] == true && squares[i+3] == nil && lastNum != i+3 && maruLast != i+3{
                playerReachNum = i+3
                isReachPlayer = true
                break
            }else if squares[i+6] == true && squares[i+3] == true && squares[i] == nil && lastNum != i && maruLast != i{
                playerReachNum = i
                isReachPlayer = true
                break
            }else if squares[0] == true && squares[4] == true && squares[8] == nil && lastNum != 8 && maruLast != 8{
                playerReachNum = 8
                isReachPlayer = true
                break
            }else if squares[0] == true && squares[8] == false && squares[4] == nil && lastNum != 4 && maruLast != 4{
                playerReachNum = 4
                isReachPlayer = true
                break
            }else if squares[8] == true && squares[4] == true && squares[0] == nil && lastNum != 0 && maruLast != 0{
                playerReachNum = 0
                isReachPlayer = true
                break
            }else if squares[2] == true && squares[4] == true && squares[6] == nil && lastNum != 6 && maruLast != 6{
                playerReachNum = 6
                isReachPlayer = true
                break
            }else if squares[2] == true && squares[6] == true && squares[4] == nil && lastNum != 4 && maruLast != 4{
                playerReachNum = 4
                isReachPlayer = true
                break
            }else if squares[6] == true && squares[4] == true && squares[2] == nil && lastNum != 2 && maruLast != 2{
                playerReachNum = 2
                isReachPlayer = true
                break
            }
            
        }
        
        //////////////////////////////////////////////////////////////////////////////////////////////
        
        var comReachNum = 0
        
        var isReachCom = false
        
        for var i = 0; i <= 2; i++ {
            
            if squares[i*3] == false && squares[i*3 + 1] == false && squares[i*3 + 2] == nil && lastNum != i*3 + 2 && maruLast != i*3+2{
                comReachNum = i*3+2
                isReachCom = true
                break
            }else if squares[i*3] == false && squares[i*3 + 2] == false && squares[i*3 + 1] == nil && lastNum != i*3 + 1 && maruLast != i*3+1{
                comReachNum = i*3+1
                isReachCom = true
                break
            }else if squares[i*3 + 1] == false && squares[i*3 + 2] == false && squares[i*3] == nil && lastNum != i*3 && maruLast != i*3{
                comReachNum = i*3
                isReachCom = true
                break
            }else if squares[i] == false && squares[i+3] == false && squares[i+6] == nil && lastNum != i+6 && maruLast != i+6{
                comReachNum = i+6
                isReachCom = true
                break
            }else if squares[i] == false && squares[i+6] == false && squares[i+3] == nil && lastNum != i+3 && maruLast != i+3{
                comReachNum = i+3
                isReachCom = true
                break
            }else if squares[i+6] == false && squares[i+3] == false && squares[i] == nil && lastNum != i && maruLast != i{
                comReachNum = i
                isReachCom = true
                break
            }else if squares[0] == false && squares[4] == false && squares[8] == nil && lastNum != 8 && maruLast != 8{
                comReachNum = 8
                isReachCom = true
                break
            }else if squares[0] == false && squares[8] == false && squares[4] == nil && lastNum != 4 && maruLast != 4{
                comReachNum = 4
                isReachCom = true
                break
            }else if squares[8] == false && squares[4] == false && squares[0] == nil && lastNum != 0 && maruLast != 0{
                comReachNum = 0
                isReachCom = true
                break
            }else if squares[2] == false && squares[4] == false && squares[6] == nil && lastNum != 6 && maruLast != 6{
                comReachNum = 6
                isReachCom = true
                break
            }else if squares[2] == false && squares[6] == false && squares[4] == nil && lastNum != 4 && maruLast != 4{
                comReachNum = 4
                isReachCom = true
                break
            }else if squares[6] == false && squares[4] == false && squares[2] == nil && lastNum != 2 && maruLast != 2{
                comReachNum = 2
                isReachCom = true
                break
            }
        }
        
        ////////////////////////////////////////////////////////////////////////////////////////
        
        if isReachPlayer == true && isReachCom == false{
            
            myArray[2] = maruLast
            if myArray[2] != 100{
                squares[myArray[2]] = true
            }
            
            return playerReachNum
            
        }
        
        if isReachPlayer == true && isReachCom == true{
            
            myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
            
            if CPUScore == 4{
                return comReachNum
            }
            
            if myScore <= CPUScore && arc4random_uniform(2) == 1{
                return comReachNum
            }else{
                return playerReachNum
            }
            
        }
        
        if isReachPlayer == false && isReachCom == true{
            
            myArray[2] = maruLast
            if myArray[2] != 100{
                squares[myArray[2]] = true
            }
            
            return comReachNum
            
        }
        
        //詰まされ潰し
        
        for var i = 0; i < 3; i++ {
            
            if CPUArray[1] == i*3 && myArray[0] == i*3+1 && squares[i*3+2] == nil && lastNum != i*3+2 && maruLast != i*3+2{
                print("1")
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return i*3+2
            }
            if CPUArray[1] == i*3 && myArray[0] == i*3+2 && squares[i*3+1] == nil && lastNum != i*3+1 && maruLast != i*3+1{
                print("2")
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return i*3+1
            }
            if CPUArray[1] == i*3+1 && myArray[0] == i*3 && squares[i*3+2] == nil && lastNum != i*3+2 && maruLast != i*3+2{
                print("3")
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return i*3+2
            }
            if CPUArray[1] == i*3+2 && myArray[0] == i*3 && squares[i*3+1] == nil && lastNum != i*3+1 && maruLast != i*3+1{
                print("4")
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return i*3+1
            }
            if CPUArray[1] == i*3+2 && myArray[0] == i*3+1 && squares[i*3] == nil && lastNum != i*3 && maruLast != i*3{
                print("5")
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return i*3
            }
            if CPUArray[1] == i*3+1 && myArray[0] == i*3+2 && squares[i*3] == nil && lastNum != i*3 && maruLast != i*3{
                print("6")
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return i*3
            }
            
            
            
            if CPUArray[1] == i && myArray[0] == i+3 && squares[i+6] == nil && lastNum != i+6 && maruLast != i+6{
                print("7")
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return i+6
            }
            if CPUArray[1] == i && myArray[0] == i+6 && squares[i+3] == nil && lastNum != i+3 && maruLast != i+3{
                print("8")
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return i+3
            }
            if CPUArray[1] == i+3 && myArray[0] == i && squares[i+6] == nil && lastNum != i+6 && maruLast != i+6{
                print("9")
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return i+6
            }
            if CPUArray[1] == i+6 && myArray[0] == i && squares[i+3] == nil && lastNum != i+3 && maruLast != i+3{
                print("10")
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return i+3
            }
            if CPUArray[1] == i+6 && myArray[0] == i+3 && squares[i] == nil && lastNum != i && maruLast != i{
                print("11")
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return i
            }
            if CPUArray[1] == i+3 && myArray[0] == i+6 && squares[i] == nil && lastNum != i && maruLast != i{
                print("12")
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return i
            }
            
            
            
            if CPUArray[1] == 0 && myArray[0] == 4 && squares[8] == nil && lastNum != 8 && maruLast != 8{
                print("13")
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return 8
            }
            if CPUArray[1] == 0 && myArray[0] == 8 && squares[4] == nil && lastNum != 4 && maruLast != 4{
                print("14")
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return 4
            }
            if CPUArray[1] == 4 && myArray[0] == 0 && squares[8] == nil && lastNum != 8 && maruLast != 8{
                print("15")
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return 8
            }
            if CPUArray[1] == 8 && myArray[0] == 0 && squares[4] == nil && lastNum != 4 && maruLast != 4{
                print("16")
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return 4
            }
            if CPUArray[1] == 8 && myArray[0] == 4 && squares[0] == nil && lastNum != 0 && maruLast != 0{
                print("17")
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return 0
            }
            if CPUArray[1] == 4 && myArray[0] == 8 && squares[0] == nil && lastNum != 0 && maruLast != 0{
                print("18")
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return 0
            }
            
            
            
            if CPUArray[1] == 2 && myArray[0] == 4 && squares[6] == nil && lastNum != 6 && maruLast != 6{
                print("19")
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return 6
            }
            if CPUArray[1] == 2 && myArray[0] == 6 && squares[4] == nil && lastNum != 4 && maruLast != 4{
                print("20")
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return 4
            }
            if CPUArray[1] == 4 && myArray[0] == 2 && squares[6] == nil && lastNum != 6 && maruLast != 6{
                print("21")
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return 6
            }
            if CPUArray[1] == 6 && myArray[0] == 2 && squares[4] == nil && lastNum != 4 && maruLast != 4{
                print("22")
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return 4
            }
            if CPUArray[1] == 6 && myArray[0] == 4 && squares[2] == nil && lastNum != 2 && maruLast != 2{
                print("23")
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return 2
            }
            if CPUArray[1] == 4 && myArray[0] == 6 && squares[2] == nil && lastNum != 2 && maruLast != 2{
                print("24")
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return 2
            }
            
        }
        
        //詰ませにいく
        
        for var i = 0; i < 3; i++ {
            
            if squares[i*3] == false && squares[i*3+1] == nil && squares[i*3+2] == nil && lastNum != i*3+1 && maruLast == i*3+2{
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return i*3+1
            }
            if squares[i*3] == false && squares[i*3+1] == nil && squares[i*3+2] == nil && lastNum != i*3+2 && maruLast == i*3+1{
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return i*3+2
            }
            if squares[i*3] == nil && squares[i*3+1] == false && squares[i*3+2] == nil && lastNum != i*3 && maruLast == i*3+2{
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return i*3
            }
            if squares[i*3] == nil && squares[i*3+1] == false && squares[i*3+2] == nil && lastNum != i*3+2 && maruLast == i*3{
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return i*3+2
            }
            if squares[i*3] == nil && squares[i*3+1] == nil && squares[i*3+2] == false && lastNum != i*3 && maruLast == i*3+1{
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return i*3
            }
            if squares[i*3] == nil && squares[i*3+1] == nil && squares[i*3+2] == false && lastNum != i*3+1 && maruLast == i*3{
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return i*3+1
            }
            if squares[i] == false && squares[i+3] == nil && squares[i+6] == nil && lastNum != i+3 && maruLast == i+6{
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return i+3
            }
            if squares[i] == false && squares[i+3] == nil && squares[i+6] == nil && lastNum != i+6 && maruLast == i+3{
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return i+6
            }
            if squares[i] == nil && squares[i+3] == false && squares[i+6] == nil && lastNum != i && maruLast == i+6{
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return i
            }
            if squares[i] == nil && squares[i+3] == false && squares[i+6] == nil && lastNum != i+6 && maruLast == i{
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return i+6
            }
            if squares[i] == nil && squares[i+3] == nil && squares[i+6] == false && lastNum != i && maruLast == i+3{
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return i
            }
            if squares[i] == nil && squares[i+3] == nil && squares[i+6] == false && lastNum != i+3 && maruLast == i{
                myArray[2] = maruLast
                if myArray[2] != 100{
                    squares[myArray[2]] = true
                }
                return i+3
            }
        }
        if squares[0] == false && squares[4] == nil && squares[8] == nil && lastNum != 4 && maruLast == 8{
            myArray[2] = maruLast
            if myArray[2] != 100{
                squares[myArray[2]] = true
            }
            return 4
        }
        if squares[0] == false && squares[4] == nil && squares[8] == nil && lastNum != 8 && maruLast == 4{
            myArray[2] = maruLast
            if myArray[2] != 100{
                squares[myArray[2]] = true
            }
            return 8
        }
        if squares[0] == nil && squares[4] == false && squares[8] == nil && lastNum != 0 && maruLast == 8{
            myArray[2] = maruLast
            if myArray[2] != 100{
                squares[myArray[2]] = true
            }
            return 0
        }
        if squares[0] == nil && squares[4] == false && squares[8] == nil && lastNum != 8 && maruLast == 0{
            myArray[2] = maruLast
            if myArray[2] != 100{
                squares[myArray[2]] = true
            }
            return 8
        }
        if squares[0] == nil && squares[4] == nil && squares[8] == false && lastNum != 0 && maruLast == 4{
            myArray[2] = maruLast
            if myArray[2] != 100{
                squares[myArray[2]] = true
            }
            return 0
        }
        if squares[0] == nil && squares[4] == nil && squares[8] == false && lastNum != 4 && maruLast == 0{
            myArray[2] = maruLast
            if myArray[2] != 100{
                squares[myArray[2]] = true
            }
            return 4
        }
        if squares[2] == false && squares[4] == nil && squares[6] == nil && lastNum != 4 && maruLast == 6{
            myArray[2] = maruLast
            if myArray[2] != 100{
                squares[myArray[2]] = true
            }
            return 4
        }
        if squares[2] == false && squares[4] == nil && squares[6] == nil && lastNum != 6 && maruLast == 4{
            myArray[2] = maruLast
            if myArray[2] != 100{
                squares[myArray[2]] = true
            }
            return 6
        }
        if squares[2] == nil && squares[4] == false && squares[6] == nil && lastNum != 2 && maruLast == 6{
            myArray[2] = maruLast
            if myArray[2] != 100{
                squares[myArray[2]] = true
            }
            return 2
        }
        if squares[2] == nil && squares[4] == false && squares[6] == nil && lastNum != 6 && maruLast == 2{
            myArray[2] = maruLast
            if myArray[2] != 100{
                squares[myArray[2]] = true
            }
            return 6
        }
        if squares[2] == nil && squares[4] == nil && squares[6] == false && lastNum != 2 && maruLast == 4{
            myArray[2] = maruLast
            if myArray[2] != 100{
                squares[myArray[2]] = true
            }
            return 2
        }
        if squares[2] == nil && squares[4] == nil && squares[6] == false && lastNum != 4 && maruLast == 2{
            myArray[2] = maruLast
            if myArray[2] != 100{
                squares[myArray[2]] = true
            }
            return 4
        }
        
        
        
        myArray[2] = maruLast
        
        if myArray[2] != 100{
            squares[myArray[2]] = true
        }
        
        if squares[4] == nil && lastNum != 4{
            return 4
        }
        
        if lastNum == 100{
            
            var randomNum = hajikko[Int(arc4random_uniform(UInt32(hajikko.count)))]
            
            while squares[randomNum] != nil{
                
                randomNum = hajikko[Int(arc4random_uniform(UInt32(hajikko.count)))]
                
            }
            
            return randomNum
            
        }
        
        if squares[0] != nil && squares[2] != nil && squares[6] != nil && squares[8] != nil{
            
            var a = aida[Int(arc4random_uniform(UInt32(aida.count)))]
            
            while squares[a] != nil || lastNum == a{
                
                a = aida[Int(arc4random_uniform(UInt32(aida.count)))]
                
            }
            return  a
            
        }
        
        var randomNum = hajikko[Int(arc4random_uniform(UInt32(hajikko.count)))]
        
        while squares[randomNum] != nil || lastNum == randomNum{
            
            
            
            randomNum = hajikko[Int(arc4random_uniform(UInt32(hajikko.count)))]
            
            if squares[0] != nil && squares[2] != nil && squares[6] != nil && lastNum == 8{
                
                var a = aida[Int(arc4random_uniform(UInt32(aida.count)))]
                
                while squares[a] != nil || lastNum == a{
                    
                    a = aida[Int(arc4random_uniform(UInt32(aida.count)))]
                    
                }
                
                return  a
                
            }
            
            if squares[0] != nil && squares[2] != nil && squares[8] != nil && lastNum == 6{
                
                var a = aida[Int(arc4random_uniform(UInt32(aida.count)))]
                
                while squares[a] != nil || lastNum == a{
                    
                    a = aida[Int(arc4random_uniform(UInt32(aida.count)))]
                    
                }
                return  a
                
                
            }
            
            if squares[0] != nil && squares[8] != nil && squares[6] != nil && lastNum == 2{
                
                var a = aida[Int(arc4random_uniform(UInt32(aida.count)))]
                
                while squares[a] != nil || lastNum == a{
                    
                    a = aida[Int(arc4random_uniform(UInt32(aida.count)))]
                    
                }
                
                return  a
                
            }
            
            if squares[8] != nil && squares[2] != nil && squares[6] != nil && lastNum == 0{
                
                var a = aida[Int(arc4random_uniform(UInt32(aida.count)))]
                
                while squares[a] != nil || lastNum == a{
                    
                    a = aida[Int(arc4random_uniform(UInt32(aida.count)))]
                    
                }
                
                return  a
                
            }
        }
        return randomNum
    }
    
    func mokkai(){
        
        lab1.text = nil
        lab2.text = nil
        lab3.text = nil
        lab4.text = nil
        lab5.text = nil
        lab6.text = nil
        lab7.text = nil
        lab8.text = nil
        lab9.text = nil
        
        for var i = 0; i < 9; i++ {
            
            squares[i] = nil
            
        }
        
        lab.text = nil
        
        clear = nil
        
        mokkaiButton.hidden = true
        
        winsLab.text = String("\(wins)連勝中!")
        
        myArray[0] = 100
        myArray[1] = 100
        myArray[2] = 100
        
        CPUArray[0] = 100
        CPUArray[1] = 100
        CPUArray[2] = 100
        
        myScore = 0
        CPUScore = 0
        scoreLab.text = String("\(myScore) : \(CPUScore)")
        
    }
    
    func ranking(score:Int){
        
        var junni = 0
        
        var new = false
        
        if level == 0{
            for var i = 0; i < 5; i++ {
                
                if highscoresEasy[i] < score{
                    
                    for var j = 4; j > i; j-- {
                        
                        highscoresEasy[j] = highscoresEasy[j - 1]
                        
                    }
                    
                    highscoresEasy[i] = score
                    
                    junni = i + 1
                    
                    easy1 = highscoresEasy[0]
                    easy2 = highscoresEasy[1]
                    easy3 = highscoresEasy[2]
                    easy4 = highscoresEasy[3]
                    easy5 = highscoresEasy[4]
                    
                    ud.setInteger(easy1, forKey: "zeroe")
                    ud.setInteger(easy2, forKey: "onee")
                    ud.setInteger(easy3, forKey: "twoe")
                    ud.setInteger(easy4, forKey: "threee")
                    ud.setInteger(easy5, forKey: "foure")
                    
                    newRecord = true
                    
                    new = true
                    
                    break
                    
                }
            }
        }
        
        if level == 1{
            for var i = 0; i < 5; i++ {
                
                if highscoresNormal[i] < score{
                    
                    for var j = 4; j > i; j-- {
                        
                        highscoresNormal[j] = highscoresNormal[j - 1]
                        
                    }
                    
                    highscoresNormal[i] = score
                    
                    junni = i + 1
                    
                    normal1 = highscoresNormal[0]
                    normal2 = highscoresNormal[1]
                    normal3 = highscoresNormal[2]
                    normal4 = highscoresNormal[3]
                    normal5 = highscoresNormal[4]
                    
                    ud.setInteger(normal1, forKey: "zero")
                    ud.setInteger(normal2, forKey: "one")
                    ud.setInteger(normal3, forKey: "two")
                    ud.setInteger(normal4, forKey: "three")
                    ud.setInteger(normal5, forKey: "four")
                    
                    newRecord = true
                    
                    new = true
                    
                    break
                    
                }
            }
        }
        
        if level == 2{
            for var i = 0; i < 5; i++ {
                
                if highscoresHard[i] < score{
                    
                    for var j = 4; j > i; j-- {
                        
                        highscoresHard[j] = highscoresHard[j - 1]
                        
                    }
                    
                    highscoresHard[i] = score
                    
                    junni = i + 1
                    
                    hard1 = highscoresHard[0]
                    hard2 = highscoresHard[1]
                    hard3 = highscoresHard[2]
                    hard4 = highscoresHard[3]
                    hard5 = highscoresHard[4]
                    
                    ud.setInteger(hard1, forKey: "zeroh")
                    ud.setInteger(hard2, forKey: "oneh")
                    ud.setInteger(hard3, forKey: "twoh")
                    ud.setInteger(hard4, forKey: "threeh")
                    ud.setInteger(hard5, forKey: "fourh")
                    
                    newRecord = true
                    
                    new = true
                    
                    break
                    
                }
            }
        }
        
        if new == true{
            
            let alertController = UIAlertController(title: "ランクイン！", message: "\(score)連勝で\(junni)位にランクイン！\nこの素晴らしい成績をtwitterで友達に自慢しよう！", preferredStyle: .Alert)
            let otherAction = UIAlertAction(title: "今はいい", style: .Default) {
                action in
            }
            
            let cancelAction = UIAlertAction(title: "そうする！！", style: .Cancel) {
                action in
                let twitterPostView:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)!
                
                twitterPostView.setInitialText("激ムズマルバツで\(self.levelname[level])COM相手に\(score)連勝しました!この記録に勝てるかなぁぁぁ？？？\nhttps://t.co/FdHzswrWhR#激ムズマルバツ")
                self.presentViewController(twitterPostView, animated: true, completion: nil)
            }
            alertController.addAction(otherAction)
            alertController.addAction(cancelAction)
            presentViewController(alertController, animated: true, completion: nil)
        }
        
    }
    
    func jikeshi(){
        
        if myArray[2] == 0{
            lab1.text = nil
        }else if myArray[2] == 1{
            lab2.text = nil
        }else if myArray[2] == 2{
            lab3.text = nil
        }else if myArray[2] == 3{
            lab4.text = nil
        }else if myArray[2] == 4{
            lab5.text = nil
        }else if myArray[2] == 5{
            lab6.text = nil
        }else if myArray[2] == 6{
            lab7.text = nil
        }else if myArray[2] == 7{
            lab8.text = nil
        }else if myArray[2] == 8{
            lab9.text = nil
        }
        
        
        
    }
    
    func jikeshi2(){
        if CPUArray[2] == 0{
            lab1.text = nil
        }else if CPUArray[2] == 1{
            lab2.text = nil
        }else if CPUArray[2] == 2{
            lab3.text = nil
        }else if CPUArray[2] == 3{
            lab4.text = nil
        }else if CPUArray[2] == 4{
            lab5.text = nil
        }else if CPUArray[2] == 5{
            lab6.text = nil
        }else if CPUArray[2] == 6{
            lab7.text = nil
        }else if CPUArray[2] == 7{
            lab8.text = nil
        }else if CPUArray[2] == 8{
            lab9.text = nil
        }
        
    }
    
    @IBAction func tapEndGame(){
        
        ranking(wins)
        
        wins = 0
        
    }
    
    private func getAdBannerView() -> GADBannerView {
        var bannerView: GADBannerView = GADBannerView()
        bannerView = GADBannerView(adSize:kGADAdSizeBanner)
        bannerView.frame.size = CGSizeMake(self.view.frame.width, bannerView.frame.height)
        bannerView.frame.origin = CGPointMake(0, self.view.frame.size.height - bannerView.frame.height)
        bannerView.adUnitID = "ca-app-pub-7292261742464348/4064322316" // Enter Ad's ID here
        bannerView.delegate = self
        bannerView.rootViewController = self
        
        let request:GADRequest = GADRequest()
        //        request.testDevices = [GAD_SIMULATOR_ID]
        bannerView.loadRequest(request)
        //
        return bannerView
    }
    
    func createAndLoadInterstitial()->GADInterstitial {
        let interstitial = GADInterstitial(adUnitID: "ca-app-pub-7292261742464348/4535421912")
        interstitial?.delegate = self
        let gadRequest:GADRequest = GADRequest()
        //gadRequest.testDevices = [kGADSimulatorID]  // テスト時のみ
        interstitial?.loadRequest(gadRequest)
        
        
        return interstitial!
    }
}

