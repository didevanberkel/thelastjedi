//
//  Colors.swift
//  TheLastJedi
//
//  Created by Dide van Berkel on 14/09/2018.
//  Copyright © 2018 Move4Mobile. All rights reserved.
//

import Foundation
import UIKit

// Color sheet for the standard colors. Not used yet. 
func UIColorFromRGB(rgbValue: UInt) -> UIColor {
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}

class SWColors {
    
    class func darkGrey() -> UIColor { return UIColorFromRGB(rgbValue: 0x26262B) }
    class func lightGrey() -> UIColor { return UIColorFromRGB(rgbValue: 0xA0A6AD) }
    
}
