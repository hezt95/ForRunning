//
//  HZTRoundCornerButton.swift
//  ForRunning
//
//  Created by He Zitong on 15/7/28.
//  Copyright (c) 2015年 He Zitong. All rights reserved.
//

import UIKit

class HZTRoundCornerButton: UIButton {
    
    init(parentView: UIView, locationV: Double, title: String) {
        super.init(frame: CGRectMake(0, 0, 0, 0))
        parentView.addSubview(self)
        let btnHeight = 45
        let btnWidth = parentView.frame.width - 60
        self.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(parentView).offset(locationV)
            make.centerX.equalTo(parentView)
            make.height.equalTo(btnHeight)
            make.width.equalTo(btnWidth)
        }
        self.setTitle(title, forState: UIControlState.Normal)
        self.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 25)
        println(self.frame.height)
        println(self.frame.size.height)
        self.layer.cornerRadius = CGFloat(btnHeight / 2)
        self.layer.borderWidth = 1.5
        self.layer.borderColor = UIColor.lineColor().CGColor
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
