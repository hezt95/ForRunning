//
//  HZTDateLabel.swift
//  ForRunning
//
//  Created by He Zitong on 15/7/25.
//  Copyright (c) 2015年 He Zitong. All rights reserved.
//

import UIKit

class HZTDateLabel: UILabel {
    
    init(fatherView: UIView) {
        super.init(frame: CGRectMake(0, 0, 0, 0))
        fatherView.addSubview(self)
        self.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(fatherView).offset(58)
            make.centerX.equalTo(fatherView)
        }
        
        let formatter = NSDateFormatter()
        let calendar = NSCalendar(identifier: NSCalendarIdentifierGregorian)
        formatter.calendar = calendar
        formatter.dateFormat = "EEEE, MMMM d"
        let date = formatter.stringFromDate(NSDate())
        
        text = date
        font = UIFont(name: "Avenir-Heavy", size: 9)
        textColor = UIColor.dateLabelColor()
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
