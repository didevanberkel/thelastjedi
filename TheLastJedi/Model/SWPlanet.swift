//
//  SWPlanet.swift
//  TheLastJedi
//
//  Created by Dide van Berkel on 12/09/2018.
//  Copyright © 2018 Move4Mobile. All rights reserved.
//

import Foundation

struct SWPlanet {
    
    private var _name: String = ""
    private var _diameter: String = ""
    private var _climate: String = ""
    private var _img: String = ""
    
    var name: String {
        return _name
    }
    
    var diameter: String {
        return _diameter
    }
    
    var climate: String {
        return _climate
    }
    
    var img: String {
        return _img
    }
    
    init(name: String, diameter: String, climate: String, img: String) {
        self._name = name
        self._diameter = diameter
        self._climate = climate
        self._img = img
    }
}
