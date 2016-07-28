//
//  HolyDialView.swift
//  Holy Cow
//
//  Created by Tobin Bell on 7/27/16.
//  Copyright © 2016 Tobin Bell. All rights reserved.
//

import UIKit

@IBDesignable class HolyDialView: UIView {

    @IBInspectable var min: Double = 0 {
        didSet {
            if min > max { max = min }
            value = (min...max).clip(value)
        }
    }
    
    @IBInspectable var max: Double = 1 {
        didSet {
            if max < min { min = max }
            value = (min...max).clip(value)
        }
    }
    
    @IBInspectable var value: Double = 0 {
        didSet {
            value = (min...max).clip(value)
        }
    }
    
    override func drawRect(rect: CGRect) {
        
        let fillThickness = bounds.width / 9
        let strokeThickness: CGFloat = 2
        
        let center = CGPoint(x: bounds.midX, y: bounds.midY)
        let outerRadius = bounds.width / 2 - strokeThickness / 2
        let innerRadius = bounds.width / 2 - fillThickness
        let fillRadius = bounds.width / 2 - fillThickness / 2
        
        let progress = min == max ? 1 : (value - min) / (max - min)
        let fillStart = -M_PI_2
        let fillEnd = fillStart + progress * 2 * M_PI
        
        let innerStroke = UIBezierPath(arcCenter: center,
                                       radius: innerRadius,
                                       startAngle: 0,
                                       endAngle: 2 * CGFloat(M_PI),
                                       clockwise: true)
        innerStroke.lineWidth = strokeThickness
        
        let outerStroke = UIBezierPath(arcCenter: center,
                                       radius: outerRadius,
                                       startAngle: 0,
                                       endAngle: 2 * CGFloat(M_PI),
                                       clockwise: true)
        outerStroke.lineWidth = strokeThickness
        
        let dialFill = UIBezierPath(arcCenter: center,
                                    radius: fillRadius,
                                    startAngle: CGFloat(fillStart),
                                    endAngle: CGFloat(fillEnd),
                                    clockwise: true)
        dialFill.lineWidth = fillThickness
        
        tintColor.setStroke()
        dialFill.stroke()
        innerStroke.stroke()
        outerStroke.stroke()
    }

}
