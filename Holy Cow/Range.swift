//
//  Range.swift
//  Holy Cow
//
//  Created by Tobin Bell on 7/27/16.
//  Copyright © 2016 Tobin Bell. All rights reserved.
//

import Foundation

extension ClosedInterval {
    
    func clip(value: Bound) -> Bound {
        return min(max(value, start), end)
    }
    
}