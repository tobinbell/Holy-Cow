//
//  HolyTabBarItem.swift
//  Holy Cow
//
//  Created by Isabel Taswell on 7/28/16.
//  Copyright © 2016 Tobin Bell. All rights reserved.
//

import UIKit

class HolyTabBarItem: UITabBarItem {

    override init() {
        super.init()
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        // Set our font.
        let titleFont = UIFont(name: "GTWalsheimPro-Regular", size: 10)!
        setTitleTextAttributes([NSFontAttributeName: titleFont], forState: [])
    }
}
