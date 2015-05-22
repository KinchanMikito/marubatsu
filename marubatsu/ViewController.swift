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
    
    var clear:Bool = false


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
        lab1.text = "◯"
        square1 = true
        check()
    }
    @IBAction func tap2(){
        lab2.text = "◯"
        square2 = true
        check()
    }
    @IBAction func tap3(){
        lab3.text = "◯"
        square3 = true
        check()
    }
    @IBAction func tap4(){
        lab4.text = "◯"
        square4 = true
        check()
    }
    @IBAction func tap5(){
        lab5.text = "◯"
        square5 = true
        check()
    }
    @IBAction func tap6(){
        lab6.text = "◯"
        square6 = true
        check()
    }
    @IBAction func tap7(){
        lab7.text = "◯"
        square7 = true
        check()
    }
    @IBAction func tap8(){
        lab8.text = "◯"
        square8 = true
        check()
    }
    @IBAction func tap9(){
        lab9.text = "◯"
        square9 = true
        check()
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
        
        if clear == true{
            lab.text = "win!"
        }
        
    }
}

