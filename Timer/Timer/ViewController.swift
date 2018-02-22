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
            repeats: true // リピート再生する
        )
    }
    
    // タイマーから定期的に呼び出されるメソッド
    @objc func step(){
        // 水平方向へ移動
        car.center.x += 10
        // 右辺から外へ出たら
        let carWidth = car.bounds.width
        if car.center.x>(view.bounds.width + carWidth/2) {
            // 左辺の手前に戻す
            car.center.x = -carWidth
            // y座標はランダムな高さに変更
            let viewH = view.bounds.height
             car.center.y = CGFloat(arc4random_uniform(UInt32(viewH)))
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
