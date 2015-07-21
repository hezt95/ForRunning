//
//  MainViewController.swift
//  ForRunning
//
//  Created by He Zitong on 15/7/6.
//  Copyright (c) 2015年 He Zitong. All rights reserved.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    var gradientLayer:CAGradientLayer?
    override func viewDidLoad() {
        super.viewDidLoad()
        //hide navigation bar
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        //add gradient view
        var gradientView = HZTGradientView(fatherViewCtrl: self)
        self.view.addSubview(gradientView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
