//
//  HolyTabBar.swift
//  Holy Cow
//
//  Created by Isabel Taswell on 7/28/16.
//  Copyright © 2016 Tobin Bell. All rights reserved.
//

import UIKit

class HolyTabBar: UITabBar {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        
        // Hide the bottom border to match the flat design.
        clipsToBounds = true
        
        // Set our tint color (because Interface Builder doesn't seem to work for that).
        tintColor = .holyBlue
    }

}
