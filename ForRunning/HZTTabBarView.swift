//
//  HZTTabBarView.swift
//  ForRunning
//
//  Created by He Zitong on 15/7/25.
//  Copyright (c) 2015年 He Zitong. All rights reserved.
//

import UIKit

class HZTTabBarView: UIView, ChangeTabBarColorDelegate {
    var tabBarBtn: [HZTTabBarButton]?
    var tabBarTitle: [UILabel]?
    var tabBarIcon: [UIImage]?
    
    init(tabBarCtrl: HZTTabBarController) {
        let tabBarHeight = 49
        super.init(frame:CGRectMake(0, 0, 0, 0))
        tabBarCtrl.view.addSubview(self)
        //set TabBar view's constraints
        self.snp_makeConstraints { (make) -> Void in
            make.height.equalTo(tabBarHeight)
            make.bottom.equalTo(tabBarCtrl.view.snp_bottom)
            make.left.equalTo(tabBarCtrl.view.snp_left)
            make.right.equalTo(tabBarCtrl.view.snp_right)
        }
        self.backgroundColor = UIColor.tabBarColor()
        initTabBar()
        layoutTabBar()
        setTabBarContent(tabBarCtrl)
    }
    
    func initTabBar() {
        //init 4 tabBarBtn, tabBarTitle, tabBarIcon
        tabBarBtn = [HZTTabBarButton]()
        tabBarTitle = [UILabel]()
        tabBarIcon = [UIImage]()
        for var index = 0; index < vcCounts; index++ {
            var tabBarBtn = HZTTabBarButton()
            self.tabBarBtn!.append(tabBarBtn)
            self.addSubview(self.tabBarBtn![index])
            
            var tabBarTitle = UILabel()
            self.tabBarTitle!.append(tabBarTitle)
            self.addSubview(self.tabBarTitle![index])
            
            var tabBarIcon = UIImage()
            self.tabBarIcon!.append(tabBarIcon)
        }

    }
    
    func layoutTabBar() {
        let titleBottomPadding = -2
        //autolayout:TabBarBtn and TabBarTitl

        for var index = 0; index < vcCounts; index++ {
            switch index {
            case 0:
                tabBarBtn![index].snp_makeConstraints{ (make) -> Void in
                    make.top.equalTo(self.snp_top)
                    make.bottom.equalTo(self.snp_bottom)
                    make.left.equalTo(self.snp_left)
                    make.right.equalTo(tabBarBtn![index + 1].snp_left)
                    for var i = 0; i < vcCounts; i++ {
                        if i != index {
                            make.width.equalTo(tabBarBtn![i])
                        }
                    }
                }
                tabBarTitle![index].snp_makeConstraints{ (make) -> Void in
                    make.bottom.equalTo(self).offset(titleBottomPadding)
                    make.left.equalTo(self.snp_left)
                    make.right.equalTo(tabBarTitle![index + 1].snp_left)
                    for var i = 0; i < vcCounts; i++ {
                        if i != index {
                            make.width.equalTo(tabBarTitle![i])
                        }
                    }
                }
            case 1...(vcCounts - 2):
                tabBarBtn![index].snp_makeConstraints{ (make) -> Void in
                    make.top.equalTo(self.snp_top)
                    make.bottom.equalTo(self.snp_bottom)
                    make.left.equalTo(tabBarBtn![index - 1].snp_right)
                    make.right.equalTo(tabBarBtn![index + 1].snp_left)
                    for var i = 0; i < vcCounts; i++ {
                        if i != index {
                            make.width.equalTo(tabBarBtn![i])
                        }
                    }
                }
                tabBarTitle![index].snp_makeConstraints{ (make) -> Void in
                    make.bottom.equalTo(self.snp_bottom).offset(titleBottomPadding)
                    make.left.equalTo(tabBarTitle![index - 1].snp_right)
                    make.right.equalTo(tabBarTitle![index + 1].snp_left)
                    for var i = 0; i < vcCounts; i++ {
                        if i != index {
                            make.width.equalTo(tabBarTitle![i])
                        }
                    }
                }
            case vcCounts - 1:
                tabBarBtn![index].snp_makeConstraints{ (make) -> Void in
                    make.top.equalTo(self.snp_top)
                    make.bottom.equalTo(self.snp_bottom)
                    make.left.equalTo(tabBarBtn![index - 1].snp_right)
                    make.right.equalTo(self.snp_right)
                    for var i = 0; i < vcCounts; i++ {
                        if i != index {
                            make.width.equalTo(tabBarBtn![i])
                        }
                    }
                }
                tabBarTitle![index].snp_makeConstraints{ (make) -> Void in
                    make.bottom.equalTo(self.snp_bottom).offset(titleBottomPadding)
                    make.left.equalTo(tabBarTitle![index - 1].snp_right)
                    make.right.equalTo(self.snp_right)
                    for var i = 0; i < vcCounts; i++ {
                        if i != index {
                            make.width.equalTo(tabBarTitle![i])
                        }
                    }
                }
                
            default:
                fatalError("Wrong index")
            }
        }

    }
    
    func setTabBarContent(tabBarCtrl: HZTTabBarController) {
        //set the TabBarBtn and TabBarTitle
        //set TabBarBtn's image
        for var index = 0; index < vcCounts; index++ {
            //setting content(icon image and title text)
            tabBarIcon![index] = UIImage(named: "\(vcTitle[index]).png")!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
            tabBarTitle![index].text = "\(vcTitle[index])"
            
            //setting defualt TabBar's tint color
            switch index {
            case 0:
                tabBarBtn![index].tintColor = UIColor.tabBarSelectedColor()
                tabBarTitle![index].textColor = UIColor.tabBarSelectedColor()
            case 1:
                tabBarBtn![index].tintColor = UIColor.tabBarNormalColor()
                tabBarTitle![index].textColor = UIColor.tabBarNormalColor()
            case vcCounts - 2:
                tabBarBtn![index].tintColor = UIColor.tabBarNormalColor()
                tabBarTitle![index].textColor = UIColor.tabBarNormalColor()
            case vcCounts - 1:
                tabBarBtn![index].tintColor = UIColor.tabBarNormalColor()
                tabBarTitle![index].textColor = UIColor.tabBarNormalColor()
            default:
                fatalError("Wrong index")
            }
            tabBarBtn![index].setImage(tabBarIcon![index], forState: UIControlState.Selected)
            tabBarBtn![index].setImage(tabBarIcon![index], forState: UIControlState.Normal)
            tabBarBtn![index].imageEdgeInsets = UIEdgeInsetsMake(0, 0, 10, 0)
//            tabBarBtn![index].clipsToBounds = false
//            tabBarBtn![index].contentMode = UIViewContentMode.ScaleAspectFill
            tabBarBtn![index].addTarget(tabBarCtrl, action: Selector("touchTabBarBtn:"), forControlEvents: UIControlEvents.TouchDown)
            tabBarBtn![index].tag = index
            //cancell the Highlighted of btn
            tabBarBtn![index].adjustsImageWhenHighlighted = false
            //setting tabBarTitle
            tabBarTitle![index].textAlignment = NSTextAlignment.Center
            tabBarTitle![index].font = UIFont(name: "Helvetica", size: 8)
            
        }

    }
    
    func changeToNormalColor(index: Int) {
        tabBarBtn![index].tintColor = UIColor.tabBarNormalColor()
        tabBarTitle![index].textColor = UIColor.tabBarNormalColor()
    }
    
    func changeToSelectedColor(index: Int) {
        tabBarBtn![index].tintColor = UIColor.tabBarSelectedColor()
        tabBarTitle![index].textColor = UIColor.tabBarSelectedColor()
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
