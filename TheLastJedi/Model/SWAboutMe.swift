//
//  SWAboutMe.swift
//  TheLastJedi
//
//  Created by Dide van Berkel on 13/09/2018.
//  Copyright © 2018 Move4Mobile. All rights reserved.
//

import Foundation

struct SWAboutMe {
    
    private var _name: String = ""
    private var _age: String = ""
    private var _workTitle: String = ""
    private var _img: String = ""
    private var _linkedIn: String = ""
    
    var name: String {
        return _name
    }
    
    var age: String {
        return _age
    }
    
    var workTitle: String {
        return _workTitle
    }
    
    var linkedIn: String {
        return _linkedIn
    }
    
    init(name: String, age: String, workTitle: String, linkedIn: String, img: String) {
        self._name = name
        self._age = age
        self._workTitle = workTitle
        self._img = img
        self._linkedIn = linkedIn
    }
    
}
