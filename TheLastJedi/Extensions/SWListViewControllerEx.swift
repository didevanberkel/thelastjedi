//
//  SWListViewController.swift
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
        setSelectedListButton()
        getListData()
    }
    
    func planetButtonPressed() {
        listType = .SWPlanet
        setSelectedListButton()
        getListData()
    }
    
    func starshipButtonPressed() {
        listType = .SWStarship
        setSelectedListButton()
        getListData()
    }
    
    func setSelectedListButton() {
        LoadingIndicator.show()
        listButtonView.peopleButton.isSelected = (listType == .SWPeople)
        listButtonView.planetButton.isSelected = (listType == .SWPlanet)
        listButtonView.starshipButton.isSelected = (listType == .SWStarship)
    }
}
