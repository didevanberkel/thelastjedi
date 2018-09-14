//
//  LoadingIndicator.swift
//  TheLastJedi
//
//  Created by Dide van Berkel on 14/09/2018.
//  Copyright © 2018 Move4Mobile. All rights reserved.
//

import Foundation
import UIKit

class LoadingIndicator {
    
    static var currentOverlay : UIView?
    static var darkBg : UIView!
    
    static func show() {
        guard let currentMainWindow = UIApplication.shared.keyWindow else {
            //print("No main window.")
            return
        }
        showIndicator(overlayTarget: currentMainWindow)
    }
    
    static func hide() {
        if currentOverlay != nil {
            currentOverlay?.removeFromSuperview()
            currentOverlay =  nil
        }
    }
    
    static func showIndicator(overlayTarget : UIView) {
        // Clear it first in case it was already shown.
        hide()
        
        // Create the overlay.
        let screenSize: CGRect = UIScreen.main.bounds
        let overlay = UIView(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
        overlay.center = CGPoint(x: (screenSize.width / 2), y: (screenSize.height / 2))
        overlay.backgroundColor = SWColors.lightGrey()
        overlay.alpha = 0.9
        overlay.layer.cornerRadius = 8.0
        overlayTarget.addSubview(overlay)
        overlayTarget.bringSubview(toFront: overlay)
        
        // Create and animate the activity indicator.
        let indicator = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.whiteLarge)
        indicator.center = CGPoint(x: overlay.frame.width / 2, y: (overlay.frame.height / 2))
        indicator.startAnimating()
        overlay.addSubview(indicator)
        
        currentOverlay = overlay
    }
}
