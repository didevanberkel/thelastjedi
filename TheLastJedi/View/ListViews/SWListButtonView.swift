//
//  SWListButtonView.swift
//  TheLastJedi
//
//  Created by Dide van Berkel on 12/09/2018.
//  Copyright © 2018 Move4Mobile. All rights reserved.
//

import UIKit

protocol SWListButtonViewDelegate: class {
    func peopleButtonPressed()
    func planetButtonPressed()
    func starshipButtonPressed()
}

class SWListButtonView: UIView {
    
    weak var delegate: SWListButtonViewDelegate?
    
    @IBOutlet weak var peopleButton: UIButton!
    @IBOutlet weak var planetButton: UIButton!
    @IBOutlet weak var starshipButton: UIButton!
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    
    @IBAction func peopleButtonPressed(_ sender: Any) {
        delegate?.peopleButtonPressed()
    }
    
    @IBAction func planetButtonPressed(_ sender: Any) {
        delegate?.planetButtonPressed()
    }
    
    @IBAction func starshipButtonPressed(_ sender: Any) {
        delegate?.starshipButtonPressed()
    }
    
    
}
