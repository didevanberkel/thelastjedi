//
//  SWPlanetDetailView.swift
//  TheLastJedi
//
//  Created by Dide van Berkel on 13/09/2018.
//  Copyright © 2018 Move4Mobile. All rights reserved.
//

import UIKit

class SWPlanetDetailView: UIView {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var diameterLabel: UILabel!
    @IBOutlet weak var climateLabel: UILabel!
    @IBOutlet weak var planetImage: UIImageView!
    
    class func instanceFromNib() -> UIView {
        return UINib(nibName: "SWPlanetDetailView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    
    func setupView(planet: SWPlanet) {
        nameLabel.text = planet.name
        diameterLabel.text = planet.diameter
        climateLabel.text = planet.climate
        
        planetImage.roundEdges(cornerRadius: planetImage.frame.size.width / 2)
        planetImage.loadImageAsync(with: planet.img)
    }
}
