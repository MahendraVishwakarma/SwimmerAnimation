//
//  SwimmerEffect.swift
//  SwimmerDemo
//
//  Created by Mahendra Vishwakarma on 03/09/20.
//  Copyright © 2020 Mahendra Vishwakarma. All rights reserved.
//

import Foundation
import UIKit


extension UIView: SwimmerProtocol {
    @IBInspectable
    var isSwimmering: Bool {
        get {
            
            return SwimmerSkeleton.skeletonable
        }
        set {
            if(newValue) {
                startAnimation()
            }
            
            SwimmerSkeleton.skeletonable = newValue }
    }
    var swimmerColors: Array<UIColor> {
        get {
            return DefaultSwimmerColor.color
        }
        set {
            DefaultSwimmerColor.color = newValue
        }
    }
    
    func startAnimation() {
        let gradientLayer = addGradientLayer()
        let animation = addAnimation()
        gradientLayer.add(animation, forKey: animation.keyPath)
    }
    
    func stopAnimatiom() {
        
        _ = self.layer.sublayers?.filter({$0.name == SwimmerEnum.gradientName.rawValue}).map({$0.removeFromSuperlayer()})
    }
    
    private func addGradientLayer() -> CAGradientLayer {
        
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.colors = swimmerColors.map({$0.cgColor})
        gradientLayer.locations = [0.0, 0.5, 1.0]
        gradientLayer.name = SwimmerEnum.gradientName.rawValue
        self.layer.addSublayer(gradientLayer)
        DispatchQueue.main.asyncAfter(deadline: .now()) {
           gradientLayer.frame = self.bounds
        }
        
        return gradientLayer
    }
    
    private func addAnimation() -> CABasicAnimation {
        
        let animation = CABasicAnimation(keyPath: SwimmerEnum.animationName.rawValue)
        animation.fromValue = [-1.0, -0.5, 0.0]
        animation.toValue = [1.0, 1.5, 2.0]
        animation.repeatCount = .infinity
        animation.duration = 0.95
        return animation
    }
    
}

