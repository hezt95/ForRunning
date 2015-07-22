//
//  HZTTabBarController.swift
//  ForRunning
//
//  Created by He Zitong on 15/7/22.
//  Copyright (c) 2015年 He Zitong. All rights reserved.
//

import UIKit

class HZTTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().translucent = false
        UITabBarItem.appearance().setTitleTextAttributes([NSFontAttributeName : UIFont(name: "HelveticaNeue-Bold", size: 10.0)!, NSForegroundColorAttributeName: UIColor.tabBarNormalColor()], forState: UIControlState.Normal)
//        UITabBarItem.appearance().setTitleTextAttributes([NSFontAttributeName : UIFont(name: "HelveticaNeue-Bold", size: 15.0)!, NSForegroundColorAttributeName: UIColor.tabBarSelectedColor()], forState: UIControlState.Selected)
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
