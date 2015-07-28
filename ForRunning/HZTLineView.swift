//
//  HZTLineView.swift
//  ForRunning
//
//  Created by He Zitong on 15/7/27.
//  Copyright (c) 2015年 He Zitong. All rights reserved.
//

import UIKit

class HZTLineView: UIView {
    init(parentView: UIView) {
        super.init(frame: CGRectMake(0, 0, 0, 0))
        parentView.addSubview(self)
        let paddingH = 60
        let paddingV = 78
        self.snp_makeConstraints{ (make) -> Void in
            make.top.equalTo(parentView).offset(paddingV)
            make.height.equalTo(0.5)
            make.left.equalTo(parentView).offset(paddingH)
            make.right.equalTo(parentView).offset(-paddingH)
        }
        self.backgroundColor = UIColor.lineColor()
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
