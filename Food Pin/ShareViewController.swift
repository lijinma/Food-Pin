//
//  ShareViewController.swift
//  Food Pin
//
//  Created by Li JinMa on 14/11/28.
//  Copyright (c) 2014年 Li JinMa. All rights reserved.
//

import UIKit

class ShareViewController: UIViewController {

    @IBOutlet weak var backgroundImageView:UIImageView!
    
    @IBOutlet weak var facebookUIButton:UIButton!
    @IBOutlet weak var twitterUIButton:UIButton!
    @IBOutlet weak var messageUIButton:UIButton!
    @IBOutlet weak var emailUIButton:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //blur background image
        var blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Dark)
        var blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        
        // Do any additional setup after loading the view.
        
        var x1:CGFloat = 0
        var y1:CGFloat = -500
        
        var x2:CGFloat = 0
        var y2:CGFloat = 500
        
        self.facebookUIButton.transform = CGAffineTransformMakeTranslation(x1, y1)
        self.twitterUIButton.transform = CGAffineTransformMakeTranslation(x2, y2)
        self.messageUIButton.transform = CGAffineTransformMakeTranslation(x1, y1)
        self.emailUIButton.transform = CGAffineTransformMakeTranslation(x2, y2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.7, delay: 0.0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.5, options: nil, animations: {
            self.facebookUIButton.transform = CGAffineTransformMakeTranslation(0, 0)
            self.twitterUIButton.transform = CGAffineTransformMakeTranslation(0, 0)
            self.messageUIButton.transform = CGAffineTransformMakeTranslation(0, 0)
            self.emailUIButton.transform = CGAffineTransformMakeTranslation(0, 0)
        }, completion: nil)
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
