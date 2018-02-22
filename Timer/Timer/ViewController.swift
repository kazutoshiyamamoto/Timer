//
//  ViewController.swift
//  Timer
//
//  Created by home on 2018/02/22.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var car: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // タイマーを作成する
        Timer.scheduledTimer(
            timeInterval: 0.1, //繰り返す時間
            target: self,
            selector: #selector(self.step),
            userInfo: nil,
            repeats: true) // リピート再生する
        )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

