//
//  UIColor.swift
//  Holy Cow
//
//  Created by Tobin Bell on 7/26/16.
//  Copyright © 2016 Tobin Bell. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init(red: Int, green: Int, blue: Int) {
        self.init(red: CGFloat(red) / 255,
                  green: CGFloat(green) / 255,
                  blue: CGFloat(blue) / 255,
                  alpha: 1)
    }
    
    class var holyGray: UIColor {
        return UIColor(red: 187, green: 204, blue: 213)
    }
    
    class var holyBlack: UIColor {
        return UIColor(red: 32, green: 31, blue: 26)
    }
    
    class var holyPurple: UIColor {
        return UIColor(red: 100, green: 82, blue: 168)
    }
    
    class var holyRed: UIColor {
        return UIColor(red: 238, green: 83, blue: 81)
    }
    
    class var holyOrange: UIColor {
        return UIColor(red: 243, green: 146, blue: 49)
    }
    
    class var holyBlue: UIColor {
        return UIColor(red: 76, green: 198, blue: 251)
    }
    
    class var holyGreen: UIColor {
        return UIColor(red: 95, green: 207, blue: 157)
    }
    
}