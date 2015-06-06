
//
//  TopViewController.swift
//  marubatsu
//
//  Created by 金森幹斗 on 2015/06/06.
//  Copyright (c) 2015年 Mikito Kanamori. All rights reserved.
//

import UIKit

class TopViewController: UIViewController {
    
    @IBOutlet var label1:UILabel!
    @IBOutlet var label2:UILabel!
    @IBOutlet var label3:UILabel!
    @IBOutlet var label4:UILabel!
    @IBOutlet var label5:UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        wins = 0
        
        label1.text = String("1:\(no1)連勝")
        label2.text = String("2:\(no2)連勝")
        label3.text = String("3:\(no3)連勝")
        label4.text = String("4:\(no4)連勝")
        label5.text = String("5:\(no5)連勝")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
