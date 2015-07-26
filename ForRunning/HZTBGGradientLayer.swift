//
//  HZTBGGradientLayer.swift
//  ForRunning
//
//  Created by He Zitong on 15/7/26.
//  Copyright (c) 2015年 He Zitong. All rights reserved.
//

import UIKit

class HZTBGGradientLayer {
    
    class func setLayer(parentView: UIView) {
        //this func is used for add gradient layer
        //add gradient layer
        let layer = CAGradientLayer()
        layer.frame = CGRectMake(0, 0, parentView.frame.width, parentView.frame.height - 49)
        parentView.layer.addSublayer(layer)
        //set gradient color's directions
        layer.startPoint = CGPointMake(0, 0)
        layer.endPoint = CGPointMake(0, 1)
        //set color
        layer.colors = [UIColor.topGradientColor().CGColor, UIColor.bottomGradientColor().CGColor]
        
        //set color divider
        layer.locations = [0,1.0]
    }
}
