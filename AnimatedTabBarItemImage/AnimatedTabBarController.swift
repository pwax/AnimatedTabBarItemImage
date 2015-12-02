//
//  AnimatedTabBarController.swift
//  AnimatedTabBarItemImage
//
//  Created by Perry Waxman on 10/23/15.
//  Copyright © 2015 P.W. All rights reserved.
//

import UIKit

class AnimatedTabBarController: UITabBarController {
    
    var secondItemImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstItemView = self.tabBar.subviews[1]
        self.secondItemImageView = firstItemView.subviews.first as! UIImageView
        self.secondItemImageView.contentMode = .Center
        
    }
    
    override func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        
        if item.tag == 1{
            //do our animations
            
            self.secondItemImageView.transform = CGAffineTransformIdentity
            
            UIView.animateWithDuration(0.7, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: { () -> Void in
                
                let rotation = CGAffineTransformMakeRotation(CGFloat(M_PI_2))
                self.secondItemImageView.transform = rotation
                
                }, completion: nil)
            
        }
        
    }
    
    
    
}
