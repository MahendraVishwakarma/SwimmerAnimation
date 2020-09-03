//
//  SwimmerEffectProtocol.swift
//  SwimmerDemo
//
//  Created by Mahendra Vishwakarma on 03/09/20.
//  Copyright © 2020 Mahendra Vishwakarma. All rights reserved.
//

import Foundation
import UIKit

protocol SwimmerProtocol {
    func startAnimation()
    func stopAnimatiom()
    var swimmerColors: Array<UIColor>{get set}
}

