//
//  SWListDetailHelper.swift
//  TheLastJedi
//
//  Created by Dide van Berkel on 13/09/2018.
//  Copyright © 2018 Move4Mobile. All rights reserved.
//

import Foundation

class SWAboutMeHelper {
    
    class func getAboutMeData() -> SWAboutMe {
        // Some static data about me.
        return SWAboutMe(name: "about_me_name".localized, age: "about_me_age".localized, workTitle: "about_me_worktitle".localized, linkedIn: URL_LINKEDIN, img: URL_LINKEDIN_IMG)
    }
    
}

