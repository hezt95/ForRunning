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
let vcTitle = ["Today", "Total", "Medal", "Me"]
let vcCounts = 4
        
enum ViewCtrl: Int {
    case Today = 0, Total, Medal, Me
}

class HZTTabBarController: UITabBarController {
    var changeColorDelegate: ChangeTabBarColorDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.hidden = true
        changeColorDelegate = self.view as! HZTTabBarView
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func loadView() {
        self.view = HZTTabBarView(tabBarCtrl: self)
    }
    
    func touchTabBarBtn(button: HZTTabBarButton) {
        println(self.selectedIndex)
        selectedIndex = button.tag
        println(self.selectedIndex)
        for var index = 0; index < vcCounts; index++ {
            if index == selectedIndex {
                changeColorDelegate!.changeToSelectedColor(index)
            } else {
                changeColorDelegate!.changeToNormalColor(index)
            }
        }
    }
}

protocol ChangeTabBarColorDelegate {
    func changeToSelectedColor(index: Int)
    func changeToNormalColor(index: Int)
}
