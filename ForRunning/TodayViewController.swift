//
//  TodayViewController.swift
//  ForRunning
//
//  Created by He Zitong on 15/7/22.
//  Copyright (c) 2015年 He Zitong. All rights reserved.
//

import UIKit
import SnapKit

class TodayViewController: HZTGradientViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Today"
        let titleLabel = HZTTitleLabel(fatherView: self.view, title: self.title!)
        //Bezier
//        var bezierContext = UIGraphicsGetCurrentContext()
//        
//        CGContextSetRGBStrokeColor(bezierContext, 1, 1, 1, 1.0)
//        CGContextSetLineWidth(bezierContext, 1.0)
//        CGContextDrawPath(bezierContext, kCGPathStroke)
//
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
