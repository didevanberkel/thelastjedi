//
//  SWPeopleCell.swift
//  TheLastJedi
//
//  Created by Dide van Berkel on 12/09/2018.
//  Copyright © 2018 Move4Mobile. All rights reserved.
//

import UIKit

class SWPeopleCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var hairColorLabel: UILabel!
    @IBOutlet weak var peopleImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setupCell(person: SWPeople) {
        peopleImage.layer.masksToBounds = true
        peopleImage.roundEdges(cornerRadius: 8.0)
        
        nameLabel.text = person.name
        genderLabel.text = person.gender
        birthYearLabel.text = person.birthYear
        hairColorLabel.text = person.hairColor
    }
    
}
