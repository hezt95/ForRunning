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
        super.init(frame: CGRectMake(0, 200, 375, 375))
        parentView.addSubview(self)
        self.backgroundColor = UIColor.lineColor()
        self.setupColorLayer()
    }
    
    func setupColorLayer() {
        colorLayer = CAShapeLayer()
        colorLayer!.frame = self.bounds
        println("colorLayer frame: " + String(stringInterpolationSegment: colorLayer!.frame))
        println("colorLayer bounds: " + String(stringInterpolationSegment: colorLayer!.bounds))
        println("view frame: " + String(stringInterpolationSegment: self.frame))
        println("view bounds: " + String(stringInterpolationSegment: self.bounds))
        println("self.layer frame: " + String(stringInterpolationSegment: self.layer.frame))
        println("self.layer bounds: " + String(stringInterpolationSegment: self.layer.bounds))
        self.layer.addSublayer(colorLayer)
        
        let leftLayer = CAGradientLayer()
        leftLayer.frame = CGRectMake(colorLayer!.frame.origin.x, colorLayer!.frame.origin.y, colorLayer!.frame.width / 2, colorLayer!.frame.height)
        println("leftLayer frame: " + String(stringInterpolationSegment: leftLayer.frame))
        leftLayer.locations = [0.3, 0.9, 1.0]
        leftLayer.colors = [UIColor.yellowColor().CGColor, UIColor.greenColor().CGColor]
        colorLayer!.addSublayer(leftLayer)
        
        let rightLayer = CAGradientLayer()
        rightLayer.frame = CGRectMake(colorLayer!.frame.origin.x + colorLayer!.frame.width / 2, colorLayer!.frame.origin.y, colorLayer!.frame.width / 2, colorLayer!.frame.height)
        println("rightLayer frame: " + String(stringInterpolationSegment: rightLayer.frame))
        leftLayer.locations = [0.3, 0.9, 1.0]
        rightLayer.colors = [UIColor.yellowColor().CGColor, UIColor.redColor().CGColor]
        colorLayer!.addSublayer(rightLayer)
    }

    func generateMaskLayer() -> CAShapeLayer {
        let layer = CAShapeLayer()
        layer.frame = self.frame
        let path = UIBezierPath(arcCenter: self.center, radius: self.frame.width / 2, startAngle: CGFloat(0), endAngle: CGFloat(2 * π), clockwise: true)
        layer.lineWidth = 15
        layer.path = path.CGPath
        layer.fillColor = UIColor.clearColor().CGColor
        layer.strokeColor = UIColor.lineColor().CGColor
        layer.lineCap = kCALineCapRound
        return layer
    }
    
    func setupColorMaskLayer() {
        let layer = generateMaskLayer()
        layer.lineWidth = 20.5
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
