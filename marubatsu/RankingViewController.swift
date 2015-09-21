//
//  RankingViewController.swift
//  marubatsu
//
//  Created by 金森幹斗 on 2015/06/20.
//  Copyright (c) 2015年 Mikito Kanamori. All rights reserved.
//

import UIKit
import Social

class RankingViewController: UIViewController {
    
    @IBOutlet var label1:UILabel!
    @IBOutlet var label2:UILabel!
    @IBOutlet var label3:UILabel!
    @IBOutlet var label4:UILabel!
    @IBOutlet var label5:UILabel!
    
    @IBOutlet var levelsegment:UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        wins = 0
        
        label1.text = String("1:\(normal1)連勝")
        label2.text = String("2:\(normal2)連勝")
        label3.text = String("3:\(normal3)連勝")
        label4.text = String("4:\(normal4)連勝")
        label5.text = String("5:\(normal5)連勝")
        
    }
    
    override func viewDidAppear(animated: Bool) {
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeLevel(){
        
        switch levelsegment.selectedSegmentIndex {
        case 0:
            label1.text = String("1:\(easy1)連勝")
            label2.text = String("2:\(easy2)連勝")
            label3.text = String("3:\(easy3)連勝")
            label4.text = String("4:\(easy4)連勝")
            label5.text = String("5:\(easy5)連勝")
        case 1:
            label1.text = String("1:\(normal1)連勝")
            label2.text = String("2:\(normal2)連勝")
            label3.text = String("3:\(normal3)連勝")
            label4.text = String("4:\(normal4)連勝")
            label5.text = String("5:\(normal5)連勝")
        case 2:
            label1.text = String("1:\(hard1)連勝")
            label2.text = String("2:\(hard2)連勝")
            label3.text = String("3:\(hard3)連勝")
            label4.text = String("4:\(hard4)連勝")
            label5.text = String("5:\(hard5)連勝")
        default:
            print("Error")
        }
        
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
