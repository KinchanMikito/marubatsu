//
//  ViewController.swift
//  marubatsu
//
//  Created by 金森幹斗 on 2015/05/22.
//  Copyright (c) 2015年 Mikito Kanamori. All rights reserved.
//

import UIKit

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
    
    var square1:Bool? = nil
    var square2:Bool? = nil
    var square3:Bool? = nil
    var square4:Bool? = nil
    var square5:Bool? = nil
    var square6:Bool? = nil
    var square7:Bool? = nil
    var square8:Bool? = nil
    var square9:Bool? = nil
    
    var clear:Bool? = nil

    var count:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lab1.text = nil
        lab2.text = nil
        lab3.text = nil
        lab4.text = nil
        lab5.text = nil
        lab6.text = nil
        lab7.text = nil
        lab8.text = nil
        lab9.text = nil

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tap1(){
        if square1 == nil {
            lab1.text = "◯"
            square1 = true
            count++
            aite()
            check()
        }
    }
    @IBAction func tap2(){
        if square2 == nil {
            lab2.text = "◯"
            square2 = true
            count++
            aite()
            check()
        }
    }
    @IBAction func tap3(){
        if square3 == nil {
            lab3.text = "◯"
            square3 = true
            count++
            aite()
            check()
        }
    }
    @IBAction func tap4(){
        if square4 == nil {
            lab4.text = "◯"
            square4 = true
            count++
            aite()
            check()
        }
    }
    @IBAction func tap5(){
        if square5 == nil {
            lab5.text = "◯"
            square5 = true
            count++
            aite()
            check()
        }
    }
    @IBAction func tap6(){
        if square6 == nil {
            lab6.text = "◯"
            square6 = true
            count++
            aite()
            check()
        }
    }
    @IBAction func tap7(){
        if square7 == nil {
            lab7.text = "◯"
            square7 = true
            count++
            aite()
            check()
        }
    }
    @IBAction func tap8(){
        if square8 == nil {
            lab8.text = "◯"
            square8 = true
            count++
            aite()
            check()
        }
    }
    @IBAction func tap9(){
        if square9 == nil {
            lab9.text = "◯"
            square9 = true
            count++
            aite()
            check()
        }
    }

    func check(){
        
        if square1 == true && square2 == true && square3 == true {
            clear = true
        }else if square4 == true && square5 == true && square6 == true {
            clear = true
        }else if square7 == true && square8 == true && square9 == true {
            clear = true
        }else if square1 == true && square4 == true && square7 == true {
            clear = true
        }else if square2 == true && square5 == true && square8 == true {
            clear = true
        }else if square3 == true && square6 == true && square9 == true {
            clear = true
        }else if square1 == true && square5 == true && square9 == true {
            clear = true
        }else if square3 == true && square5 == true && square7 == true {
            clear = true
        }
        
        if square1 == false && square2 == false && square3 == false {
            clear = false
        }else if square4 == false && square5 == false && square6 == false {
            clear = false
        }else if square7 == false && square8 == false && square9 == false {
            clear = false
        }else if square1 == false && square4 == false && square7 == false {
            clear = false
        }else if square2 == false && square5 == false && square8 == false {
            clear = false
        }else if square3 == false && square6 == false && square9 == false {
            clear = false
        }else if square1 == false && square5 == false && square9 == false {
            clear = false
        }else if square3 == false && square5 == false && square7 == false {
            clear = false
        }
        
        if clear == true{
            lab.text = "win!"
        }
        if clear == false{
            lab.text = "lose..."
        }
        
    }
    
    func aite(){
        
        if count < 5 {
            var a:Int = Int(arc4random_uniform(9)) + 1
            
            while a == 1 && square1 != nil{
                a = Int(arc4random_uniform(10 - a) + a)
            }
            while a == 2 && square2 != nil{
                a = Int(arc4random_uniform(10 - a) + a)
            }
            while a == 3 && square3 != nil{
                a = Int(arc4random_uniform(10 - a) + a)
            }
            while a == 4 && square4 != nil{
                a = Int(arc4random_uniform(10 - a) + a)
            }
            while a == 5 && square5 != nil{
                a = Int(arc4random_uniform(10 - a) + a)
            }
            while a == 6 && square6 != nil{
                a = Int(arc4random_uniform(10 - a) + a)
            }
            while a == 7 && square7 != nil{
                a = Int(arc4random_uniform(10 - a) + a)
            }
            while a == 8 && square8 != nil{
                a = Int(arc4random_uniform(10 - a) + a)
            }
            while a == 9 && square9 != nil{
                aite()
            }
            NSLog("a = %d",a)
            
            if a == 1{
                square1 = false
                lab1.text = "×"
            }else if a == 2{
                square2 = false
                lab2.text = "×"
            }else if a == 3{
                square3 = false
                lab3.text = "×"
            }else if a == 4{
                square4 = false
                lab4.text = "×"
            }else if a == 5{
                square5 = false
                lab5.text = "×"
            }else if a == 6{
                square6 = false
                lab6.text = "×"
            }else if a == 7{
                square7 = false
                lab7.text = "×"
            }else if a == 8{
                square8 = false
                lab8.text = "×"
            }else if a == 9{
                square9 = false
                lab9.text = "×"
            }
        }
        
    }
}

