//
//  SWAboutMe.swift
//  TheLastJedi
//
//  Created by Dide van Berkel on 13/09/2018.
//  Copyright © 2018 Move4Mobile. All rights reserved.
//

import Foundation

struct SWAboutMe {
    
    var name: String = ""
    var age: String = ""
    var workTitle: String = ""
    var img: String = ""
    var linkedIn: String = ""
    
    init(name: String, age: String, workTitle: String, linkedIn: String, img: String) {
        self.name = name
        self.age = age
        self.workTitle = workTitle
        self.img = img
        self.linkedIn = linkedIn
    }
    
}
