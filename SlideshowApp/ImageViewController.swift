//
//  ImageViewController.swift
//  SlideshowApp
//
//  Created by 阿部悠輝 on 2017/06/28.
//  Copyright © 2017年 yuki.abe. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var scaleImage: UIImageView!
    
    var bigimage: UIImage? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scaleImage.image = bigimage
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
