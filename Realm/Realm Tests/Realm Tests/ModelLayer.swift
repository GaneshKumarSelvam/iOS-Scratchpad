//
//  ModelLayer.swift
//  Realm Tests
//
//  Created by Boldt, Sebastian on 01.02.17.
//  Copyright © 2017 Sebastian Boldt. All rights reserved.
//

import Foundation
import RealmSwift

enum Unit : String {
    case kg
    case pound
    case liter
    case ounce
    case count
}

class Amount : Object {
    var value : Float = 0.0
    var unit : String = Unit.kg.rawValue
}

class Ingredient: Object {
    dynamic var additionalInformation = ""
    dynamic var name = ""
    dynamic var amount : Amount? = Amount()
}

class Recipe : Object {
    dynamic var id = 0
    dynamic var name : String = "Recipe"
    dynamic var image : Data?
    dynamic var notPersistent : String = ""
    var ingredients = List<Ingredient>()
    let testNumeric = RealmOptional<Int>()
    
    override static func indexedProperties() -> [String] {
        return ["name"]
    }
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    override static func ignoredProperties() -> [String] {
        return ["notPersistent"]
    }
}
