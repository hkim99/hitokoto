//
//  ViewController.swift
//  HitoKoto
//
//  Created by hyungkyu.kim on 2018/09/19.
//  Copyright © 2018年 hyungkyu.kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var nameArray = ["鶴岡", "飯田", "中山", "渡邊", "志田", "田中", "金", "鈴木", "赤沼", "駒井", "西本", "柿本", "相場",
                     "山岸", "本間", "浅野", "佐々木", "田淵", "いいだ", "ちょう", "崔", ""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapped(_ sender: UIButton) {
        if nameArray.isEmpty { return }
        let idx = Int(arc4random()) % nameArray.count
        sender.setTitleColor(UIColor.black, for: .normal)
        sender.setTitle(nameArray[idx], for: .normal)
        nameArray.remove(at: idx)
    }
}
