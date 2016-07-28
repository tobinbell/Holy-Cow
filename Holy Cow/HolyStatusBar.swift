//
//  HolyStatusBar.swift
//  Holy Cow
//
//  Created by Tobin Bell on 7/28/16.
//  Copyright © 2016 Tobin Bell. All rights reserved.
//

import UIKit

class HolyStatusBar: UIView {

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
        backgroundColor = .holyGreen
    }

}
