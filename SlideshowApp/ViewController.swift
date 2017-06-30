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

    @IBOutlet weak var nextLabel: UIButton!
    
    @IBOutlet weak var backLable: UIButton!
    
    var timer: Timer?
    
    var displayImgNo = 0
    
    func displayImage(){
        let imageNameArray = ["ryouri01", "ryouri02"]
        
        if displayImgNo < 0{
            displayImgNo = 1
        }
        
        if displayImgNo > 1{
            displayImgNo = 0
        }
        
        let imgName = imageNameArray[displayImgNo]
        
        let disImage = UIImage(named: imgName+".jpg")
        
        imageView.image = disImage
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let disImage = UIImage(named: "ryouri01.jpg")
        imageView.image = disImage
        
        let myTap:UITapGestureRecognizer = UITapGestureRecognizer(target:self, action:#selector(ViewController.scaleImage) )
        imageView.addGestureRecognizer(myTap)

    }
    
    func scaleImage(){
        let storyboard: UIStoryboard = self.storyboard!
        let nextView = storyboard.instantiateViewController(withIdentifier: "imageView") as! ImageViewController
        nextView.bigimage = imageView.image
        present(nextView, animated: true, completion: nil)
        
        
    }
    
    /// Timerによって、一定の間隔で呼び出される関数
    func onTimer(timer: Timer) {
        
        // 関数が呼ばれていることを確認
        print("onTimer")
        
        displayImgNo += 1
        
        displayImage()
    }

    @IBAction func back(_ sender: Any) {
        displayImgNo -= 1
        
        displayImage()
    }
    
    @IBAction func next(_ sender: Any) {
        displayImgNo += 1
        
        displayImage()
    }
    
    @IBAction func StartStop(_ sender: UIButton) {

        if self.timer == nil{
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(ViewController.onTimer(timer:)), userInfo: nil, repeats: true)

            sender.setTitle("停止", for: .normal)
            nextLabel.isEnabled = false
            backLable.isEnabled = false
            
        }else if timer != nil{
            self.timer?.invalidate()
            self.timer = nil

            sender.setTitle("再生", for: .normal)
            nextLabel.isEnabled = true
            backLable.isEnabled = true
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

