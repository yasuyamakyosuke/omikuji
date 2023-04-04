//
//  ViewController.swift
//  omikuji
//
//  Created by 泰山恭輔 on 2023/04/04.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var myLabal: UILabel!
    
    @IBOutlet weak var resultLabal: UILabel!
    
    
    @IBAction func myButton(_ sender: Any) {
        let items = ["大吉","中吉","小吉","凶","大凶"]
        let hit = Int(arc4random()) % items.count
        myLabal.text = items[hit]
        resultGetLabel()
    }
    
    func resultGetLabel(){
        if myLabal.text == "大吉" {
            resultLabal.text = "おめでとう"
        } else if myLabal.text == "大凶" {
            resultLabal.text = "今日は家にいよう"
        } else {
            resultLabal.text == "コメントなし"
        }
        return
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

