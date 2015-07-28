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
        let btnHeight = 40
        let btnWidth = 180
        self.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(parentView).offset(locationV)
            make.centerX.equalTo(parentView)
            make.height.equalTo(btnHeight)
            make.width.equalTo(btnWidth)
        }
        self.titleLabel?.text = title
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
