//
//  HolyNavigationBar.swift
//  Holy Cow
//
//  Created by Tobin Bell on 7/28/16.
//  Copyright © 2016 Tobin Bell. All rights reserved.
//

import UIKit

class HolyNavigationBar: UINavigationBar {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        
        // Set our background color.
        barTintColor = .holyGreen
        
        // Set our font.
        let titleFont = UIFont(name: "GTWalsheimPro-Medium", size: 22)!
        let titleColor = UIColor.holyWhite
        
        if titleTextAttributes != nil {
            titleTextAttributes![NSFontAttributeName] = titleFont
            titleTextAttributes![NSForegroundColorAttributeName] = titleColor
        } else {
            titleTextAttributes = [NSFontAttributeName: titleFont,
                                   NSForegroundColorAttributeName: titleColor]
        }
    }

}
