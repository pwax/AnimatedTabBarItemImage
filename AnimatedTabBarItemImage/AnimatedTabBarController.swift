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
        
        let secondItemView = self.tabBar.subviews[1]
        self.secondItemImageView = secondItemView.subviews.first as! UIImageView
        self.secondItemImageView.contentMode = .center
        
    }
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        if item.tag == 1{
            //do our animations
            
            self.secondItemImageView.transform = CGAffineTransform.identity
            
            UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: .curveEaseInOut, animations: { () -> Void in
                
                let rotation = CGAffineTransform(rotationAngle: CGFloat(Double.pi/2))
                self.secondItemImageView.transform = rotation
                
            }, completion: nil)
            
        }
    }
}
