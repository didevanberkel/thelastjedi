//
//  SWPeople.swift
//  TheLastJedi
//
//  Created by Dide van Berkel on 12/09/2018.
//  Copyright © 2018 Move4Mobile. All rights reserved.
//

import Foundation

struct SWPeople {
    
    private var _name: String = ""
    private var _gender: String = ""
    private var _birthYear: String = ""
    private var _hairColor: String = ""
    private var _img: String = ""
    
    var name: String {
        return _name
    }
    
    var gender: String {
        return _gender
    }
    
    var birthYear: String {
        return _birthYear
    }
    
    var hairColor: String {
        return _hairColor
    }
    
    var img: String {
        return _img
    }
    
    init(name: String, gender: String, birthYear: String, hairColor: String, img: String) {
        self._name = name
        self._gender = gender
        self._birthYear = birthYear
        self._hairColor = hairColor
        self._img = img
    }
    
}
