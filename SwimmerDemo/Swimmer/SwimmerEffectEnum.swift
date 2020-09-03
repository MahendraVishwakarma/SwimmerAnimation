//
//  SwimmerEffectGradientLayer.swift
//  SwimmerDemo
//
//  Created by Mahendra Vishwakarma on 03/09/20.
//  Copyright © 2020 Mahendra Vishwakarma. All rights reserved.
//

import Foundation
import UIKit

enum SwimmerEnum:String {
    case animationName = "locations"
    case gradientName = "swimmerGradients"
}

struct DefaultSwimmerColor {
    static var color:Array<UIColor> = [UIColor(white: 0.85, alpha: 1.0), UIColor(white: 0.95, alpha: 1.0), UIColor(white: 0.85, alpha: 1.0)]
}

struct SwimmerSkeleton{
    static var skeletonable = false
}

