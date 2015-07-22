//
//  HZTTitleLabel.swift
//  ForRunning
//
//  Created by He Zitong on 15/7/22.
//  Copyright (c) 2015年 He Zitong. All rights reserved.
//

import UIKit

class HZTTitleLabel: UILabel {
    init(fatherView:UIView){
        //super init first(all 0)
        super.init(frame: CGRectMake(0, 0, 0, 0))
        fatherView.addSubview(self)
        //autolayout
        self.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(fatherView).offset(20)
            make.centerX.equalTo(fatherView)
        }
        //set text
        self.text = "Total"
        self.textColor! = UIColor.whiteColor()
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
