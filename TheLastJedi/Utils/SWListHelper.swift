//
//  SWListHelper.swift
//  TheLastJedi
//
//  Created by Dide van Berkel on 12/09/2018.
//  Copyright © 2018 Move4Mobile. All rights reserved.
//

import Foundation

enum SWListType {
    case SWPeople
    case SWPlanet
    case SWStarship
}

class SWListHelper {
    
    class func getPeopleData(data: NSDictionary) -> [SWPeople] {
        var people: [SWPeople] = [SWPeople]()
        if let results = data["results"] as? [[String:Any]] {
            for item in results {
                var name: String = ""
                var gender: String = ""
                var birthYear: String = ""
                var hairColor: String = ""
                
                if let nameItem = item["name"] as? String {
                    name = nameItem
                }
                if let genderItem = item["gender"] as? String {
                    gender = genderItem
                }
                if let birthYearItem = item["birth_year"] as? String {
                    birthYear = birthYearItem
                }
                if let hairColorItem = item["hair_color"] as? String {
                    hairColor = hairColorItem
                }
                people.append(SWPeople(name: name, gender: gender, birthYear: birthYear, hairColor: hairColor, img: URL_IMAGE))
            }
        }
        return people
    }
    
    class func getPlanetData(data: NSDictionary) -> [SWPlanet] {
        var planet: [SWPlanet] = [SWPlanet]()
        if let results = data["results"] as? [[String:Any]] {
            for item in results {
                var name: String = ""
                var diameter: String = ""
                var climate: String = ""
                if let nameItem = item["name"] as? String {
                    name = nameItem
                }
                if let diameterItem = item["diameter"] as? String {
                    diameter = diameterItem
                }
                if let climateItem = item["climate"] as? String {
                    climate = climateItem
                }
                planet.append(SWPlanet(name: name, diameter: diameter, climate: climate, img: URL_IMAGE))
            }
        }
        return planet
    }
    
    class func getStarshipData(data: NSDictionary) -> [SWStarship] {
        var starship: [SWStarship] = [SWStarship]()
        if let results = data["results"] as? [[String:Any]] {
            for item in results {
                var name: String = ""
                var crew: String = ""
                var passengers: String = ""
                if let nameItem = item["name"] as? String {
                    name = nameItem
                }
                if let crewItem = item["crew"] as? String {
                    crew = crewItem
                }
                if let passengersItem = item["passengers"] as? String {
                    passengers = passengersItem
                }
                starship.append(SWStarship(name: name, crew: crew, passengers: passengers, img: URL_IMAGE))
            }
        }
        return starship
    }
}

