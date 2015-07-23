//
//  HZTTabBarController.swift
//  ForRunning
//
//  Created by He Zitong on 15/7/22.
//  Copyright (c) 2015年 He Zitong. All rights reserved.
//

import UIKit
import SnapKit

class HZTTabBarController: UITabBarController {
    var tabBarView:UIView?
    var tabBarBtn:[UIButton]?
    var tabBarTitle:[UILabel]?
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
        self.tabBarBtn = [UIButton]()
        self.tabBarTitle = [UILabel]()
        let titleBottomPadding = -5
        let vcCounts = 4
        for var index = 0; index < vcCounts; index++ {
            var tabBarBtn = UIButton()
            self.tabBarBtn!.append(tabBarBtn)
            self.tabBarView!.addSubview(self.tabBarBtn![index])
            
            var tabBarTitle = UILabel()
            self.tabBarTitle!.append(tabBarTitle)
            self.tabBarView!.addSubview(self.tabBarTitle![index])
        }
        
        //attention:the tabBarBtn[] below is self.tabBarBtn[]; tabBarView is self.tabBarView tabBarTitle is self.tabBarTitle
        //autolayout:TabBarBtn and TabBarTitle
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
                println("TabBar btn index: \(index)")
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
                println("TabBar btn index: \(index)")
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
                println("TabBar btn index: \(index)")
                
            default:
                fatalError("Wrong index")
            }
        }
        
        println("TabBar btn count: " + String(stringInterpolationSegment:self.tabBarBtn!.count))
        //configure the TabBarBtn and TabBarTitle
        for var index = 0; index < vcCounts; index++ {
            //TabBarTitle
            switch index {
            case 0:
                tabBarTitle![index].text = "Today"
                tabBarTitle![index].textColor = UIColor.tabBarSelectedColor()
            case 1:
                tabBarTitle![index].text = "Total"
                tabBarTitle![index].textColor = UIColor.tabBarNormalColor()
            case vcCounts - 2:
                tabBarTitle![index].text = "Medal"
                tabBarTitle![index].textColor = UIColor.tabBarNormalColor()
            case vcCounts - 1:
                tabBarTitle![index].text = "Me"
                tabBarTitle![index].textColor = UIColor.tabBarNormalColor()
            default:
                fatalError("Wrong index")
            }
            tabBarTitle![index].textAlignment = NSTextAlignment.Center
            tabBarTitle![index].font = UIFont(name: "Helvetica", size: 8)
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
