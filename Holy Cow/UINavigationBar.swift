//
//  UINavigationBar.swift
//  Holy Cow
//
//  Created by Isabel Taswell on 7/28/16.
//  Copyright © 2016 Tobin Bell. All rights reserved.
//

import UIKit

extension UINavigationBar {
    
    var borderView: UIView? {
        return findBorderView(in: self)
    }
    
    // Searches for the bottom border view in a navigation bar view.
    // It does this by recursively looking for an image view whose height is 1 point or less.
    private func findBorderView(in view: UIView) -> UIView? {
        if view is UIImageView && view.bounds.height <= 1.0 {
            return view
        }
        for subview in view.subviews {
            if let borderView = findBorderView(in: subview) {
                return borderView
            }
        }
        return nil
    }
}

