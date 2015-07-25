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
    var tabBarView: UIView?
    var tabBarBtn: [HZTTabBarButton]?
    var tabBarTitle: [UILabel]?
    var tabBarIcon: [UIImage]?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.hidden = true
        self.tabBarView = UIView(frame: self.tabBar.frame)
        self.view.addSubview(self.tabBarView!)
        self.tabBarView!.snp_makeConstraints { (make) -> Void in
            make.height.equalTo(49)
            make.bottom.equalTo(self.view)
            make.left.equalTo(self.view)
            make.right.equalTo(self.view)
        }
        self.tabBarView!.backgroundColor = UIColor.tabBarColor()
        println("TabBar view frame: " + String(stringInterpolationSegment: self.tabBarView!.frame))
        
        //init 4 TabBar btn
        self.tabBarBtn = [HZTTabBarButton]()
        self.tabBarTitle = [UILabel]()
        self.tabBarIcon = [UIImage]()
        for var index = 0; index < vcCounts; index++ {
            var tabBarBtn = HZTTabBarButton()
            self.tabBarBtn!.append(tabBarBtn)
            self.tabBarView!.addSubview(self.tabBarBtn![index])
            
            var tabBarTitle = UILabel()
            self.tabBarTitle!.append(tabBarTitle)
            self.tabBarView!.addSubview(self.tabBarTitle![index])
            
            var tabBarIcon = UIImage()
            self.tabBarIcon!.append(tabBarIcon)

        }
       
        
        //attention:the tabBarBtn[] below is self.tabBarBtn[]; tabBarView is self.tabBarView tabBarTitle is self.tabBarTitle tabBarIcon is self.tabBarIcon
        //autolayout:TabBarBtn and TabBarTitl
        let titleBottomPadding = -2
        for var index = 0; index < vcCounts; index++ {
            switch index {
            case 0:
                tabBarBtn![index].snp_makeConstraints{ (make) -> Void in
                    make.top.equalTo(tabBarView!)
                    make.bottom.equalTo(tabBarView!)
                    make.left.equalTo(tabBarView!.snp_left)
                    make.right.equalTo(tabBarBtn![index + 1].snp_left)
                    for var i = 0; i < vcCounts; i++ {
                        if i != index {
                            make.width.equalTo(tabBarBtn![i])
                        }
                    }
                }
                tabBarTitle![index].snp_makeConstraints{ (make) -> Void in
                    make.bottom.equalTo(tabBarView!).offset(titleBottomPadding)
                    make.left.equalTo(tabBarView!.snp_left)
                    make.right.equalTo(tabBarTitle![index + 1].snp_left)
                    for var i = 0; i < vcCounts; i++ {
                        if i != index {
                            make.width.equalTo(tabBarTitle![i])
                        }
                    }
                }
            case 1...(vcCounts - 2):
                tabBarBtn![index].snp_makeConstraints{ (make) -> Void in
                    make.top.equalTo(tabBarView!)
                    make.bottom.equalTo(tabBarView!)
                    make.left.equalTo(tabBarBtn![index - 1].snp_right)
                    make.right.equalTo(tabBarBtn![index + 1].snp_left)
                    for var i = 0; i < vcCounts; i++ {
                        if i != index {
                            make.width.equalTo(tabBarBtn![i])
                        }
                    }
                }
                tabBarTitle![index].snp_makeConstraints{ (make) -> Void in
                    make.bottom.equalTo(tabBarView!).offset(titleBottomPadding)
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
                    make.top.equalTo(tabBarView!)
                    make.bottom.equalTo(tabBarView!)
                    make.left.equalTo(tabBarBtn![index - 1].snp_right)
                    make.right.equalTo(tabBarView!.snp_right)
                    for var i = 0; i < vcCounts; i++ {
                        if i != index {
                            make.width.equalTo(tabBarBtn![i])
                        }
                    }
                }
                tabBarTitle![index].snp_makeConstraints{ (make) -> Void in
                    make.bottom.equalTo(tabBarView!).offset(titleBottomPadding)
                    make.left.equalTo(tabBarTitle![index - 1].snp_right)
                    make.right.equalTo(tabBarView!.snp_right)
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
        
        //configure the TabBarBtn and TabBarTitle
        //set TabBarBtn's image
        for var index = 0; index < vcCounts; index++ {
            //TabBarTitle and TabBarBtn's image
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
            tabBarBtn![index].clipsToBounds = false
            tabBarBtn![index].contentMode = UIViewContentMode.ScaleAspectFill
            tabBarBtn![index].addTarget(self, action: Selector("touchTabBarBtn:"), forControlEvents: UIControlEvents.TouchDown)
            tabBarBtn![index].tag = index
            //cancell the Highlighted of btn
            tabBarBtn![index].adjustsImageWhenHighlighted = false
            //setting tabBarTitle
            tabBarTitle![index].textAlignment = NSTextAlignment.Center
            tabBarTitle![index].font = UIFont(name: "Helvetica", size: 8)
            
        }
    }
    
    func touchTabBarBtn(button: HZTTabBarButton) {
        selectedIndex = button.tag
        for var index = 0; index < vcCounts; index++ {
            if index == selectedIndex {
                tabBarBtn![index].tintColor = UIColor.tabBarSelectedColor()
                tabBarTitle![index].textColor = UIColor.tabBarSelectedColor()
            } else {
                tabBarBtn![index].tintColor = UIColor.tabBarNormalColor()
                tabBarTitle![index].textColor = UIColor.tabBarNormalColor()
            }
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
