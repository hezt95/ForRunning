//
//  HZTTabBarController.swift
//  ForRunning
//
//  Created by He Zitong on 15/7/22.
//  Copyright (c) 2015年 He Zitong. All rights reserved.
//

import UIKit
import SnapKit

//the ViewControllers(in this TabBarController container)'s titles and counts


class HZTTabBarController: UITabBarController {
    var changeColorDelegate: ChangeTabBarColorDelegate?
    var gradientLayer: CAGradientLayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.hidden = true
        var tabBarView = HZTTabBarView(tabBarCtrl: self)
        self.view.addSubview(tabBarView)
        changeColorDelegate = tabBarView
    }
    
    func touchTabBarBtn(button: HZTTabBarButton) {
        selectedIndex = button.tag
        for var index = 0; index < vcCounts ; index++ {
            if index == selectedIndex {
                changeColorDelegate?.changeToSelectedColor(index)
            } else {
                changeColorDelegate?.changeToNormalColor(index)
            }
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


protocol ChangeTabBarColorDelegate {
    func changeToSelectedColor(index: Int)
    func changeToNormalColor(index: Int)
}
