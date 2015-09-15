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
        self.setupProgressBar()
        
    }
    
    func setupProgressBar() {
        let progressBarView = HZTRoundProgressBarView(basedOn: self.view.frame)
        self.view.addSubview(progressBarView)
        
        let distanceLabel = UILabel()
        distanceLabel.text = "450"
        distanceLabel.textColor = UIColor.whiteColor()
        let targetLabel = UILabel()
        targetLabel.text = "Today Target: 1500m"
        targetLabel.textColor = UIColor.whiteColor()
        let mLabel = UILabel()
        mLabel.text = "m"
        mLabel.textColor = UIColor.whiteColor()
        
        self.view.addSubview(distanceLabel)
        self.view.addSubview(targetLabel)
        self.view.addSubview(mLabel)
        
        distanceLabel.snp_makeConstraints { (make) -> Void in
            make.center.equalTo(progressBarView)
            make.width.equalTo(self.view.frame.width / 3)
            make.height.equalTo(self.view.frame.width / 6)
        }
        
        mLabel.snp_makeConstraints { (make) -> Void in
            
        }
        
        targetLabel.snp_makeConstraints { (make) -> Void in
            
        }
        
        
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
