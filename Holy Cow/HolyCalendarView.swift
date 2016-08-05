//
//  HolyCalendarView.swift
//  Holy Cow
//
//  Created by Tobin Bell on 8/2/16.
//  Copyright © 2016 Tobin Bell. All rights reserved.
//

import UIKit

@IBDesignable class HolyCalendarView: UIView {
    
    // Configuration options for the top row of week day labels.
    private var headerHeight = 30
    private var headerFont = UIFont(name: "GT Walsheim Pro Medium", size: 17)
    private var headerColor: UIColor = .holyGray
    
    // An array to hold the top row of week day labels.
    // The calendar must maintain references to these labels so they can be resized if needed.
    private var dayLabels = [UILabel]()
    
    var month
    
    // The (computed) number of days in each week for the displayed calendar.
    private var numberOfDaysInWeek: Int {
        return dayLabels.count
    }
    
    // Initialize programmatically. Perform standard setup.
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    // Initialize from a Storyboard. Perform standard setup.
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        
        // First, set up the week day labels along the top.
        // We get the current calendar to determine the labels.
        let calendar = NSCalendar.currentCalendar()
        
        // For the labels, we use the lowercase first letter of each week day.
        let days = calendar.weekdaySymbols.map { $0.substringToIndex($0.startIndex.successor()).lowercaseString }
        
        // For each "day" (lowercase first letter), create a UILabel.
        for day in days {
            let label = UILabel()
            label.text = day
            label.textAlignment = .Center
            label.font = headerFont
            label.textColor = headerColor
            
            dayLabels.append(label)
            addSubview(label)
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let width = bounds.width / CGFloat(numberOfDaysInWeek)
        
        for i in 0 ..< numberOfDaysInWeek {
            dayLabels[i].frame = CGRect(x: CGFloat(i) * width, y: 0, width: width, height: CGFloat(headerHeight))
        }
    }
    
    class DayView: UILabel {
        
        enum Appearance {
            case None, Filled(UIColor), Empty(UIColor)
        }
        
        var appearance: Appearance = .None
        
        override func drawRect(rect: CGRect) {
            super.drawRect(rect)
            
            switch appearance {
                case let .Filled(color):
                    drawFilled(using: color)
                case let .Empty(color):
                    drawEmpty(using: color)
                case .None:
                    break
            }
        }
        
        private func drawFilled(using color: UIColor) {
            
        }
        
        private func drawEmpty(using color: UIColor) {
            
        }
        
    }
}
