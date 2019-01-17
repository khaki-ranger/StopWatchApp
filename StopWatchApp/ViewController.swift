//
//  ViewController.swift
//  StopWatchApp
//
//  Created by 寺島 洋平 on 2019/01/17.
//  Copyright © 2019年 YoheiTerashima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func update() {
        print(Date.timeIntervalSinceReferenceDate)
    }

    @IBAction func startTimer(_ sender: Any) {
        Timer.scheduledTimer(
            timeInterval: 0.01,
            target: self,
            selector: #selector(self.update),
            userInfo: nil,
            repeats: true
        )
    }
    
    @IBAction func stopTimer(_ sender: Any) {
    }
    
    @IBAction func resetTimer(_ sender: Any) {
    }
}

