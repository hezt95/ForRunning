//
//  MeViewController.swift
//  ForRunning
//
//  Created by He Zitong on 15/7/23.
//  Copyright (c) 2015年 He Zitong. All rights reserved.
//

import UIKit

class MeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        HZTBGGradientLayer.setLayer(self.view)
        self.title = vcTitle[ViewCtrl.Me.rawValue]
        let titleLabel = HZTTitleLabel(parentView: self.view, title: self.title!)
        let dateLabel = HZTDateLabel(parentView: self.view)
        let lineView = HZTLineView(parentView: self.view)
        let btnLocationVBase = self.view.frame.height / 2 - 50 //the 4 target's base vertical location'
        let btnLocationVInterval = 70
        let targetBtn = HZTRoundCornerButton(parentView: self.view, locationV: Double(btnLocationVBase), title: "My target")
        let reminderBtn = HZTRoundCornerButton(parentView: self.view, locationV: Double(btnLocationVBase + CGFloat(btnLocationVInterval)), title: "Health Reminder")
        let settingBtn = HZTRoundCornerButton(parentView: self.view, locationV: Double(btnLocationVBase + CGFloat(btnLocationVInterval * 2)), title: "Setting")
        let logOutBtn = HZTRoundCornerButton(parentView: self.view, locationV: Double(btnLocationVBase + CGFloat(btnLocationVInterval) * 3), title: "Log Out")
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
