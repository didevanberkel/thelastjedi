//
//  Constants.swift
//  TheLastJedi
//
//  Created by Dide van Berkel on 12/09/2018.
//  Copyright © 2018 Move4Mobile. All rights reserved.
//

import Foundation

// Completion block for network call.
typealias CompletionBlock = (_ result: serverResponse?, _ dataObject: NSObject?) -> Void

// Network base url + specific urls.
let URL_BASE = "https://swapi.co/api/"
let URL_PEOPLE = "people/"
let URL_PLANET = "planets/"
let URL_STARSHIP = "starships/"

// Star Wars Twitter image url.
let URL_IMAGE = "https://pbs.twimg.com/profile_images/706705820554113024/nMv9bKOo_400x400.jpg"

// LinkedIn profile url.
let URL_LINKEDIN = "www.linkedin.com/in/didevanberkel"
let URL_LINKEDIN_IMG = "https://lh3.googleusercontent.com/-nCib8S-z8H8/UU7J41_r_oI/AAAAAAAAADQ/zi93ouxPqG4/w480-h479-n/photo.jpg"
