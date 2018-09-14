//
//  SWPeopleDetailView.swift
//  TheLastJedi
//
//  Created by Dide van Berkel on 13/09/2018.
//  Copyright © 2018 Move4Mobile. All rights reserved.
//

import UIKit

class SWPeopleDetailView: UIView {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var hairColorLabel: UILabel!
    @IBOutlet weak var peopleImage: UIImageView!
    
    class func instanceFromNib() -> UIView {
        return UINib(nibName: "SWPeopleDetailView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    
    func setupView(people: SWPeople) {
        nameLabel.text = people.name
        genderLabel.text = people.gender
        birthYearLabel.text = people.birthYear
        hairColorLabel.text = people.hairColor
        
        peopleImage.roundEdges(cornerRadius: 8.0)
        peopleImage.loadImageAsync(with: people.img)
    }
}
