//
//  TodayViewController.swift
//  ForRunning
//
//  Created by He Zitong on 15/7/22.
//  Copyright (c) 2015年 He Zitong. All rights reserved.
//

import UIKit
import SnapKit

class TodayViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        HZTBGGradientLayer.setLayer(self.view)
        self.title = vcTitle[ViewCtrl.Today.rawValue]
        let titleLabel = HZTTitleLabel(parentView: self.view, title: self.title!)
        let dateLabel = HZTDateLabel(parentView: self.view)
        let lineView = HZTLineView(parentView: self.view)
        let progressBarView = HZTRoundProgressBarView(parentView: self.view)
        
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
