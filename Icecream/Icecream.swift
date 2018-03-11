//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream: [String: String] = [
        "Joe": "Peanut Butter and Chocolate",
        "Tim": "Natural Vanilla",
        "Sophie": "Mexican Chocolate",
        "Deniz": "Natural Vanilla",
        "Tom": "Mexican Chocolate",
        "Jim": "Natural Vanilla",
        "Susan": "Cookies 'N' Cream"
    ]
    

    // 2.
    func names(forFlavor flavor: String) -> [String] {
        var favoriteArray: [String] = []
        for (name, favoriteFlavor) in favoriteFlavorsOfIceCream {
            if favoriteFlavor == flavor {
                favoriteArray.append(name)
            }
        }
        return favoriteArray
    }
    
    
    // 3.
    func count(forFlavor flavor: String) -> Int {
        var favoriteCount: Int = 0
        for (_ , favoriteFlavor) in favoriteFlavorsOfIceCream {
            if favoriteFlavor == flavor {
                favoriteCount += 1
            }
        }
        return favoriteCount
    }
        
    
    // 4.
    func flavor(forPerson person: String) -> String? {
        var flavor: String?
        if favoriteFlavorsOfIceCream[person] != nil {
            flavor = favoriteFlavorsOfIceCream[person]
        }
        else {
            flavor = nil
        }
        return flavor
    }
        
    
    // 5.
    func replace(flavor: String, forPerson person: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil {
            favoriteFlavorsOfIceCream.updateValue(flavor, forKey: person)
            return true
        }
        else {
            return false
        }
    }
    
    
    // 6.
    func remove(person: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil {
            favoriteFlavorsOfIceCream[person] = nil
            return true
        }
        else {
            return false
        }
    }
    
    
    // 7.
    func numberOfAttendees() -> Int {
        let totalNumber = favoriteFlavorsOfIceCream.count
//        for (person, _) in favoriteFlavorsOfIceCream.count {
//            totalNumber += 1
//        }
        return totalNumber
    }
        
    
    // 8.
    func add(person: String, withFlavor: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] == nil {
            favoriteFlavorsOfIceCream.updateValue(withFlavor, forKey: person)
            return true
        }
        else {
            return false
        }
    }
        
    
    // 9.
    func attendeeList() -> String {
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        print(allNames)
        var personLikes = ""
        for person in allNames {
            personLikes += "\(person) likes \(favoriteFlavorsOfIceCream[person]!)"
            if person != allNames.last {
                personLikes += "\n"
            }
        }
        print(personLikes)
        return personLikes
    }

}
