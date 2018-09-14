//
//  SWStarship.swift
//  TheLastJedi
//
//  Created by Dide van Berkel on 12/09/2018.
//  Copyright © 2018 Move4Mobile. All rights reserved.
//

import Foundation

struct SWStarship {
    
    private var _name: String = ""
    private var _crew: String = ""
    private var _passengers: String = ""
    private var _img: String = ""
    
    var name: String {
        return _name
    }
    
    var crew: String {
        return _crew
    }
    
    var passengers: String {
        return _passengers
    }
    
    var img: String {
        return _img
    }
    
    init(name: String, crew: String, passengers: String, img: String) {
        self._name = name
        self._crew = crew
        self._passengers = passengers
        self._img = img
    }
}
