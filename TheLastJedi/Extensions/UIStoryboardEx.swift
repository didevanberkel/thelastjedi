//
//  UIStoryboardEx.swift
//  TheLastJedi
//
//  Created by Dide van Berkel on 13/09/2018.
//  Copyright © 2018 Move4Mobile. All rights reserved.
//

import Foundation
import UIKit
// Extensions to insantiate the needed view controllers

extension UIStoryboard {
    
    class func main() -> UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
    class func listDetail() -> UIStoryboard {
        return UIStoryboard(name: "ListDetail", bundle: Bundle.main)
    }
    
}
