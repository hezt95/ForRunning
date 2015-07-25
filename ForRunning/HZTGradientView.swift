//
//  HZTGradientView.swift
//  ForRunning
//
//  Created by He Zitong on 15/7/25.
//  Copyright (c) 2015年 He Zitong. All rights reserved.
//

import UIKit

class HZTGradientView: UIView {
    var gradientLayer:CAGradientLayer?
    
    init () {
        super.init(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, UIScreen.mainScreen().bounds.height - 49))
        self.layer.addSublayer(self.gradientLayer)
        self.setHZTGradientLayer(self)
    }

    func setHZTGradientLayer(gradientView: HZTGradientView) {
        //this func is used for add gradient layer
        //add gradient layer
        self.gradientLayer = CAGradientLayer()
        self.gradientLayer!.frame = gradientView.bounds
        gradientView.layer.addSublayer(self.gradientLayer!)
        
        //set gradient color's directions
        self.gradientLayer!.startPoint = CGPointMake(0, 0)
        self.gradientLayer!.endPoint = CGPointMake(0, 1)
        
        //set color
        self.gradientLayer!.colors = [UIColor.topGradientColor().CGColor, UIColor.bottomGradientColor().CGColor]
        
        //set color divider
        self.gradientLayer!.locations = [0,1.0]
        
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
