//
//  HZTGradientViewController.swift
//  ForRunning
//
//  Created by He Zitong on 15/7/22.
//  Copyright (c) 2015年 He Zitong. All rights reserved.
//

import UIKit
import SnapKit

class HZTGradientViewController: UIViewController {
    var gradientLayer:CAGradientLayer?
    var gradientView:UIView?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.gradientView = UIView(frame: CGRectMake(0, 0, 0, 0))
        self.view.addSubview(self.gradientView!)
        self.gradientView!.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(self.view)
            make.bottom.equalTo(self.view).offset(-49)
            make.left.equalTo(self.view)
            make.right.equalTo(self.view)
        }
    }
 
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.gradientView!.layer.addSublayer(self.gradientLayer)
        self.setHZTGradientLayer(self.gradientView!)
        println("View frame: " + String(stringInterpolationSegment: self.view.frame))
        println("layer frame: " + String(stringInterpolationSegment: self.gradientView!.layer.frame))
    }

    func setHZTGradientLayer(gradientView: UIView) {
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
