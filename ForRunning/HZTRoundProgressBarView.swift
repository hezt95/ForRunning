//
//  HZTRoundProgressBarView.swift
//  ForRunning
//
//  Created by He Zitong on 15/7/29.
//  Copyright (c) 2015年 He Zitong. All rights reserved.
//

import UIKit

class HZTRoundProgressBarView: UIView {
    var colorLayer: CAShapeLayer?
    init(parentView: UIView){
        super.init(frame: CGRectMake(0, 200, 375, 375))
        parentView.addSubview(self)
        self.backgroundColor = UIColor.lineColor()
        
    }
    
    func setupColorLayer() {
        colorLayer = CAShapeLayer()
        colorLayer!.frame = self.frame
        self.layer.addSublayer(colorLayer)
        
        let leftLayer = CAGradientLayer()
        leftLayer.frame = CGRectMake(colorLayer!.frame.origin.x, colorLayer!.frame.origin.y, colorLayer!.frame.width / 2, colorLayer!.frame.height)
        leftLayer.locations = [0.3, 0.9, 1.0]
        leftLayer.colors = [UIColor.yellowColor().CGColor, UIColor.greenColor().CGColor]
        colorLayer!.addSublayer(leftLayer)
        
        let rightLayer = CAGradientLayer()
        rightLayer.frame = CGRectMake(colorLayer!.frame.origin.x + colorLayer!.frame.width / 2, colorLayer!.frame.origin.y, colorLayer!.frame.width / 2, colorLayer!.frame.height)
        leftLayer.locations = [0.3, 0.9, 1.0]
        rightLayer.colors = [UIColor.yellowColor().CGColor, UIColor.redColor().CGColor]
        colorLayer!.addSublayer(rightLayer)
    }

    func generateMaskLayer() {
        
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
