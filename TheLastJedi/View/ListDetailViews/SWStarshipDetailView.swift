//
//  SWStarshipDetailView.swift
//  TheLastJedi
//
//  Created by Dide van Berkel on 13/09/2018.
//  Copyright © 2018 Move4Mobile. All rights reserved.
//

import UIKit

class SWStarshipDetailView: UIView {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var crewLabel: UILabel!
    @IBOutlet weak var passengersLabel: UILabel!
    @IBOutlet weak var starshipImage: UIImageView!
    
    class func instanceFromNib() -> UIView {
        return UINib(nibName: "SWStarshipDetailView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    
    func setupView(starship: SWStarship) {
        nameLabel.text = starship.name
        crewLabel.text = starship.crew
        passengersLabel.text = starship.passengers
        
        starshipImage.loadImageAsync(with: starship.img)
    }

}
