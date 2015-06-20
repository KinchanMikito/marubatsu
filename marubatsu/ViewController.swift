//
//  ViewController.swift
//  marubatsu
//
//  Created by 金森幹斗 on 2015/05/22.
//  Copyright (c) 2015年 Mikito Kanamori. All rights reserved.
//

import UIKit

let ud = NSUserDefaults.standardUserDefaults()

var no1:Int = ud.integerForKey("zero")
var no2:Int = ud.integerForKey("one")
var no3:Int = ud.integerForKey("two")
var no4:Int = ud.integerForKey("three")
var no5:Int = ud.integerForKey("four")

var wins:Int = 0


class ViewController: UIViewController {
    
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
    
    var squares:[Bool?] = [nil,nil,nil,nil,nil,nil,nil,nil,nil]
    
    var clear:Bool? = nil

    var count:Int = 0
    
    var a:Int = 0
    
    var hajikko:[Int] = [0,2,6,8]
    
    var aida:[Int] = [1,3,5,7]
    
    var highscores = [no1,no2,no3,no4,no5]
    
    @IBOutlet var mokkaiButton:UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mokkai()
        ud.setInteger(0, forKey: "zero")
        ud.setInteger(0, forKey: "one")
        ud.setInteger(0, forKey: "two")
        ud.setInteger(0, forKey: "three")
        ud.setInteger(0, forKey: "four")
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tap1(){
        if squares[0] == nil && clear == nil{
            lab1.text = "◯"
            squares[0] = true
            count++
            aite()
            check()
        }
    }
    @IBAction func tap2(){
        if squares[1] == nil && clear == nil{
            lab2.text = "◯"
            squares[1] = true
            count++
            aite()
            check()
        }
    }
    @IBAction func tap3(){
        if squares[2] == nil && clear == nil{
            lab3.text = "◯"
            squares[2] = true
            count++
            aite()
            check()
        }
    }
    @IBAction func tap4(){
        if squares[3] == nil && clear == nil{
            lab4.text = "◯"
            squares[3] = true
            count++
            aite()
            check()
        }
    }
    @IBAction func tap5(){
        if squares[4] == nil && clear == nil{
            lab5.text = "◯"
            squares[4] = true
            count++
            aite()
            check()
        }
    }
    @IBAction func tap6(){
        if squares[5] == nil && clear == nil{
            lab6.text = "◯"
            squares[5] = true
            count++
            aite()
            check()
        }
    }
    @IBAction func tap7(){
        if squares[6] == nil && clear == nil{
            lab7.text = "◯"
            squares[6] = true
            count++
            aite()
            check()
        }
    }
    @IBAction func tap8(){
        if squares[7] == nil && clear == nil{
            lab8.text = "◯"
            squares[7] = true
            count++
            aite()
            check()
        }
    }
    @IBAction func tap9(){
        if squares[8] == nil && clear == nil{
            lab9.text = "◯"
            squares[8] = true
            count++
            aite()
            check()
        }
    }

    func check(){
        
        for var i = 0; i <= 2; i++ {
            
            if squares[i*3] == false && squares[i*3 + 1] == false && squares[i*3 + 2] == false{ //横-相手
                clear = false
                
            }
            if squares[i] == false && squares[i+3] == false && squares[i+6] == false{ //縦-相手
                clear = false
            }
            if squares[i*3] == true && squares[i*3 + 1] == true && squares[i*3 + 2] == true{ //横-自分
                clear = true
            }
            if squares[i] == true && squares[i+3] == true && squares[i+6] == true{ //縦-自分
                clear = true
            }
            
        }
        
        
        if squares[0] == false && squares[4] == false && squares[8] == false {//ナナメ-相手
            clear = false
        }else if squares[2] == false && squares[4] == false && squares[6] == false {//ナナメ-相手
            clear = false
        }
        if squares[0] == true && squares[4] == true && squares[8] == true {//ナナメ-自分
            clear = true
        }else if squares[2] == true && squares[4] == true && squares[6] == true {//ナナメ-自分
            clear = true
        }
        
        
        if clear == false{
            lab.text = "lose..."
            mokkaiButton.hidden = false
            ranking(wins)
            wins = 0
            winsLab.text = String("\(wins)連勝中!")
        }
        
        if clear == true{
            lab.text = "win!"
            mokkaiButton.hidden = false
            if a == 0 && count != 5{
                lab1.text = nil
            }else if a == 1 && count != 5{
                lab2.text = nil
            }else if a == 2 && count != 5{
                lab3.text = nil
            }else if a == 3 && count != 5{
                lab4.text = nil
            }else if a == 4 && count != 5{
                lab5.text = nil
            }else if a == 5 && count != 5{
                lab6.text = nil
            }else if a == 6 && count != 5{
                lab7.text = nil
            }else if a == 7 && count != 5{
                lab8.text = nil
            }else if a == 8 && count != 5{
                lab9.text = nil
            }
            wins++
            winsLab.text = String("\(wins)連勝中!")
        }else if count == 5{
            lab.text = "draw"
            mokkaiButton.hidden = false
            ranking(wins)
            wins = 0
            winsLab.text = String("\(wins)連勝中!")
        }
        
        
        
        
    }
    
    @IBAction func tapMokkai(){
        
        mokkai()
        
    }
    
    func aite(){
        
        if count < 5 {
            a = hantei()
            while a == 0 && squares[a] != nil{
                a = hajikko[Int(arc4random_uniform(UInt32(hajikko.count)))]
            }
            while a == 2 && squares[a] != nil{
                a = hajikko[Int(arc4random_uniform(UInt32(hajikko.count)))]
            }
            while a == 6 && squares[a] != nil{
                a = hajikko[Int(arc4random_uniform(UInt32(hajikko.count)))]
            }
            while a == 8 && squares[a] != nil{
                a = hajikko[Int(arc4random_uniform(UInt32(hajikko.count)))]
            }
            
            
            while a == 0 && squares[a] != nil{
                a = Int(arc4random_uniform(8)) + 1
            }
            while a == 1 && squares[a] != nil{
                a = Int(arc4random_uniform(7)) + 2
            }
            while a == 2 && squares[a] != nil{
                a = Int(arc4random_uniform(6)) + 3
            }
            while a == 3 && squares[a] != nil{
                a = Int(arc4random_uniform(5)) + 4
            }
            while a == 4 && squares[a] != nil{
                a = Int(arc4random_uniform(4)) + 5
            }
            while a == 5 && squares[a] != nil{
                a = Int(arc4random_uniform(3)) + 6
            }
            while a == 6 && squares[a] != nil{
                a = Int(arc4random_uniform(2)) + 7
            }
            while a == 7 && squares[a] != nil{
                a = 8
            }
            
            while a == 8 && squares[8] != nil {
                aite()
            }
            
            
            squares[a] = false
            
            if a == 0{
                lab1.text = "×"
            }else if a == 1{
                lab2.text = "×"
            }else if a == 2{
                lab3.text = "×"
            }else if a == 3{
                lab4.text = "×"
            }else if a == 4{
                lab5.text = "×"
            }else if a == 5{
                lab6.text = "×"
            }else if a == 6{
                lab7.text = "×"
            }else if a == 7{
                lab8.text = "×"
            }else if a == 8{
                lab9.text = "×"
            }
        }
    }
    
    func hantei() -> Int {
        
        for var i = 0; i <= 2; i++ {
            
            if squares[i*3] == false && squares[i*3 + 1] == false && squares[i*3 + 2] == nil{
                return i*3 + 2
            }else if squares[i*3] == false && squares[i*3 + 2] == false && squares[i*3 + 1] == nil{
                return i*3 + 1
            }else if squares[i*3 + 1] == false && squares[i*3 + 2] == false && squares[i*3] == nil{
                return i*3
            }else if squares[i] == false && squares[i+3] == false && squares[i+6] == nil{
                return i+6
            }else if squares[i] == false && squares[i+6] == false && squares[i+3] == nil{
                return i+3
            }else if squares[i+6] == false && squares[i+3] == false && squares[i] == nil{
                return i
            }else if squares[0] == false && squares[4] == false && squares[8] == nil{
                return 8
            }else if squares[0] == false && squares[8] == false && squares[4] == nil{
                return 4
            }else if squares[8] == false && squares[4] == false && squares[0] == nil{
                return 0
            }else if squares[2] == false && squares[4] == false && squares[6] == nil{
                return 6
            }else if squares[2] == false && squares[6] == false && squares[4] == nil{
                return 4
            }else if squares[6] == false && squares[4] == false && squares[2] == nil{
                return 2
            }
        }
        
        for var i = 0; i <= 2; i++ {
            if squares[i*3] == true && squares[i*3 + 1] == true && squares[i*3 + 2] == nil{
                return i*3 + 2
            }else if squares[i*3] == true && squares[i*3 + 2] == true && squares[i*3 + 1] == nil{
                return i*3 + 1
            }else if squares[i*3 + 1] == true && squares[i*3 + 2] == true && squares[i*3] == nil{
                return i*3
            }else if squares[i] == true && squares[i+3] == true && squares[i+6] == nil{
                return i+6
            }else if squares[i] == true && squares[i+6] == true && squares[i+3] == nil{
                return i+3
            }else if squares[i+6] == true && squares[i+3] == true && squares[i] == nil{
                return i
            }else if squares[0] == true && squares[4] == true && squares[8] == nil{
                return 8
            }else if squares[0] == true && squares[8] == false && squares[4] == nil{
                return 4
            }else if squares[8] == true && squares[4] == true && squares[0] == nil{
                return 0
            }else if squares[2] == true && squares[4] == true && squares[6] == nil{
                return 6
            }else if squares[2] == true && squares[6] == true && squares[4] == nil{
                return 4
            }else if squares[6] == true && squares[4] == true && squares[2] == nil{
                return 2
            }
        }
        
        if squares[4] == nil{
            
            return 4
            
        }
        if squares[2] == true && squares[6] == true && squares[4] == false{
            
            return aida[Int(arc4random_uniform(UInt32(aida.count)))]
            
        }else if squares[0] == true && squares[8] == true && squares[4] == false{
            
            return aida[Int(arc4random_uniform(UInt32(aida.count)))]
            
        }
        
        if squares[1] == true && squares[3] == true && squares[0] == nil{
            return 0
        }else if squares[1] == true && squares[5] == true && squares[2] == nil{
            return 2
        }else if squares[3] == true && squares[7] == true && squares[6] == nil{
            return 6
        }else if squares[7] == true && squares[5] == true && squares[8] == nil{
            return 8
        }
        
        if squares[1] == true && squares[6] == true && squares[0] == nil{
            return 0
        }else if squares[1] == true && squares[8] == true && squares[2] == nil{
            return 2
        }else if squares[7] == true && squares[0] == true && squares[6] == nil{
            return 6
        }else if squares[7] == true && squares[2] == true && squares[8] == nil{
            return 8
        }else if squares[3] == true && squares[2] == true && squares[0] == nil{
            return 0
        }else if squares[3] == true && squares[8] == true && squares[2] == nil{
            return 2
        }else if squares[5] == true && squares[0] == true && squares[6] == nil{
            return 6
        }else if squares[5] == true && squares[6] == true && squares[8] == nil{
            return 8
        }
        
        
        
        return hajikko[Int(arc4random_uniform(UInt32(hajikko.count)))]
        
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
        
        count = 0

        clear = nil
        
        mokkaiButton.hidden = true
        
        winsLab.text = String("\(wins)連勝中!")
        
    }
    
    func ranking(score:Int){
        
        for var i = 0; i < 5; i++ {
            
            if highscores[i] < score{
                
                for var j = 4; j > i; j-- {
                    
                    highscores[j] = highscores[j - 1]
                    
                }
                
                highscores[i] = score
                
                no1 = highscores[0]
                no2 = highscores[1]
                no3 = highscores[2]
                no4 = highscores[3]
                no5 = highscores[4]
                
                ud.setInteger(no1, forKey: "zero")
                ud.setInteger(no2, forKey: "one")
                ud.setInteger(no3, forKey: "two")
                ud.setInteger(no4, forKey: "three")
                ud.setInteger(no5, forKey: "four")
                
                break
                
            }
            
        }
        
    }
}

