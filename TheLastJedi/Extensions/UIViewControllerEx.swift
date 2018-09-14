//
//  UIViewControllerEx.swift
//  TheLastJedi
//
//  Created by Dide van Berkel on 14/09/2018.
//  Copyright © 2018 Move4Mobile. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func alert(message: String, title: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "alert_ok".localized, style: .default, handler: nil)
        alertController.addAction(OKAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
}
