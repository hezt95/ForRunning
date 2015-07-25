//
//  MeViewController.swift
//  ForRunning
//
//  Created by He Zitong on 15/7/23.
//  Copyright (c) 2015年 He Zitong. All rights reserved.
//

import UIKit

class MeViewController: HZTGradientViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = vcTitle[ViewCtrl.Me.rawValue]
        let titleLabel = HZTTitleLabel(parentView: self.view, title: self.title!)
        let date = HZTDateLabel(parentView: self.view)
        // Do any additional setup after loading the view.
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
