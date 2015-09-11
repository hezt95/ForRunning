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
    var colorMaskLayer: CAShapeLayer?
    var backgroundColorMaskLayer: CAShapeLayer?
    init(parentView: UIView){
        super.init(frame: CGRectMake(0, 0, 0, 0))
        parentView.addSubview(self)
        self.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(parentView.snp_top).offset(100)
            make.height.equalTo(300)
            make.width.equalTo(300)
            make.centerX.equalTo(parentView.snp_centerX)
        }
        self.backgroundColor = UIColor.lineColor()
        self.setupColorLayer()
        self.setupColorMaskLayer()
        self.setupBGColorMaskLayer()
        self.backgroundColorMaskLayer!.strokeEnd = 0.50
    }
    
    func setupColorLayer() {
        colorLayer = CAShapeLayer()
        colorLayer!.frame = self.bounds
        self.layer.addSublayer(colorLayer)
        
        let leftLayer = CAGradientLayer()
        leftLayer.frame = CGRectMake(colorLayer!.bounds.origin.x, colorLayer!.bounds.origin.y, colorLayer!.bounds.width / 2, colorLayer!.bounds.height)
        leftLayer.locations = [0.2, 0.9, 1.0]
        leftLayer.colors = [UIColor.yellowColor().CGColor, UIColor.greenColor().CGColor]
        colorLayer!.addSublayer(leftLayer)
        
        let rightLayer = CAGradientLayer()
        rightLayer.frame = CGRectMake(colorLayer!.bounds.origin.x + colorLayer!.bounds.width / 2, colorLayer!.bounds.origin.y, colorLayer!.bounds.width / 2, colorLayer!.bounds.height)
        rightLayer.locations = [0.2, 0.9, 1.0]
        rightLayer.colors = [UIColor.yellowColor().CGColor, UIColor.redColor().CGColor]
        colorLayer!.addSublayer(rightLayer)
    }

    func generateMaskLayer() -> CAShapeLayer {
        let roundLineWidth = 20
        let layer = CAShapeLayer()
        layer.frame = self.bounds
        let path = UIBezierPath(arcCenter: CGPointMake(self.frame.width / 2, self.frame.height / 2), radius: self.frame.width / 2 - CGFloat(roundLineWidth) / 2, startAngle: CGFloat(1.5 * π), endAngle: CGFloat(3.5 * π), clockwise: true)
        layer.lineWidth = CGFloat(roundLineWidth)
        layer.path = path.CGPath
        layer.fillColor = UIColor.clearColor().CGColor
        layer.strokeColor = UIColor.blueColor().CGColor
        layer.lineCap = kCALineCapRound
        return layer
    }
    
    func setupColorMaskLayer() {
        let layer = generateMaskLayer()
        layer.lineWidth = CGFloat(20.5)
        self.colorLayer!.mask = layer
        self.colorMaskLayer = layer
    }
    
    func setupBGColorMaskLayer() {
        let layer = generateMaskLayer()
        self.layer.mask = layer
        self.backgroundColorMaskLayer = layer
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
