//
//  CAGradientLayers+Convience.swift
//  iKnow
//
//  Created by Supansa Ch on 10/11/61.
//  Copyright © พ.ศ. 2561 Supansa Ch. All rights reserved.
//

import UIKit

extension CAGradientLayer {
    
    func turquoiseColor() -> CAGradientLayer {
    let topColor = UIColor(red: (27/255.0), green: (54/255.0), blue: (85/255.0), alpha: 1)
    let bottomColor = UIColor(red: (178/255.0), green: (222/255.0), blue: (255/255.0), alpha: 1)
    
    let gradientColor: [CGColor] = [topColor.cgColor, bottomColor.cgColor]
    let gradientlocations: [Float] = [0.2, 1.2]
    
    let gradientLayer: CAGradientLayer = CAGradientLayer()
    gradientLayer.colors = gradientColor
    gradientLayer.locations = gradientlocations as [NSNumber]
    
    return gradientLayer
   }
}
