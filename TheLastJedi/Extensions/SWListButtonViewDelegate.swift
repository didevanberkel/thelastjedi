//
//  SWListButtonViewDelegate.swift
//  TheLastJedi
//
//  Created by Dide van Berkel on 13/09/2018.
//  Copyright © 2018 Move4Mobile. All rights reserved.
//

import Foundation

extension SWListViewController: SWListButtonViewDelegate {
    
    // MARK: - SWListButtonViewDelegate
    func peopleButtonPressed() {
        listType = .SWPeople
        getListData()
        setSelectedListButton()
    }
    
    func planetButtonPressed() {
        listType = .SWPlanet
        getListData()
        setSelectedListButton()
    }
    
    func starshipButtonPressed() {
        listType = .SWStarship
        getListData()
        setSelectedListButton()
    }
    
    func setSelectedListButton() {
        listButtonView.peopleButton.isSelected = (listType == .SWPeople)
        listButtonView.planetButton.isSelected = (listType == .SWPlanet)
        listButtonView.starshipButton.isSelected = (listType == .SWStarship)
    }
}
