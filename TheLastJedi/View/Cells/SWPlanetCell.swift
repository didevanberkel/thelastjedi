//
//  SWPlanetCell.swift
//  TheLastJedi
//
//  Created by Dide van Berkel on 12/09/2018.
//  Copyright © 2018 Move4Mobile. All rights reserved.
//

import UIKit

class SWPlanetCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var diameterLabel: UILabel!
    @IBOutlet weak var climateLabel: UILabel!
    @IBOutlet weak var planetImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(planet: SWPlanet) {
        planetImage.layer.masksToBounds = true
        planetImage.roundEdges(cornerRadius: planetImage.frame.size.width / 2)
        
        nameLabel.text = planet.name
        diameterLabel.text = planet.diameter
        climateLabel.text = planet.climate
    }
    
}
