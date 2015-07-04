//
//  vsViewController.swift
//  marubatsu
//
//  Created by 金森幹斗 on 2015/06/26.
//  Copyright (c) 2015年 Mikito Kanamori. All rights reserved.
//

import UIKit

class vsViewController: UIViewController {
    
    @IBOutlet var lab1:UILabel!
    @IBOutlet var lab2:UILabel!
    @IBOutlet var lab3:UILabel!
    @IBOutlet var lab4:UILabel!
    @IBOutlet var lab5:UILabel!
    @IBOutlet var lab6:UILabel!
    @IBOutlet var lab7:UILabel!
    @IBOutlet var lab8:UILabel!
    @IBOutlet var lab9:UILabel!
    
    var squares:[Bool?] = [nil,nil,nil,nil,nil,nil,nil,nil,nil]
    
    var isTurnOf1:Bool = true
    
    var p1Array:[Int] = [100,100,100]
    
    var p2Array:[Int] = [100,100,100]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tap0(){
        
//        if squares[0] == nil
        
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
