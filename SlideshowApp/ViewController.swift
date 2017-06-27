//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 阿部悠輝 on 2017/06/20.
//  Copyright © 2017年 yuki.abe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var img1 = UIImage()
    var img2 = UIImage()
    var timer: Timer?

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        img1 = UIImage(named:"ryouri1.jpg")!
        img2 = UIImage(named:"ryouri2.jpeg")!
        
        imageView.image = img1
        self.timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.onTimer(timer:)), userInfo: nil, repeats: true)
    }
    
    /// NSTimerによって、一定の間隔で呼び出される関数
    func onTimer(timer: Timer) {
        
        // 関数が呼ばれていることを確認
        print("onTimer")
    }
    
    @IBAction func backButton(_ sender: Any) {
        imageView.image = img1
    }
    
    @IBAction func tapped(_ sender: Any) {
        imageView.image = img2
    }
    
    @IBAction func StartStop(_ sender: Any) {

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

