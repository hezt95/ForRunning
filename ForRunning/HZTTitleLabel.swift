//
//  HZTTitleLabel.swift
//  ForRunning
//
//  Created by He Zitong on 15/7/22.
//  Copyright (c) 2015年 He Zitong. All rights reserved.
//

import UIKit

class HZTTitleLabel: UILabel {
    init(parentView: UIView, title: String){
        //super init first(all 0)
        super.init(frame: CGRectMake(0, 0, 0, 0))
        parentView.addSubview(self)
        //autolayout
        self.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(parentView).offset(35)
            make.centerX.equalTo(parentView)
        }
        //set text
        self.text = title
        self.font = UIFont(name: "BanglaSangamMN-Bold", size: 18)
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
