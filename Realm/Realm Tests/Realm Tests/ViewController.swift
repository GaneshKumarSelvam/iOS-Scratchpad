//
//  ViewController.swift
//  Realm Tests
//
//  Created by Boldt, Sebastian on 01.02.17.
//  Copyright © 2017 Sebastian Boldt. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cheese = Ingredient()
        cheese.name = "Cheese"
        cheese.amount?.unit  = Unit.kg.rawValue
        cheese.amount?.value = 0.2
        
        let tomato = Ingredient()
        tomato.name = "Tomato"
        tomato.amount?.unit = Unit.kg.rawValue
        tomato.amount?.value = 0.5
        
        // Create Realm 
        let realm = try! Realm()
        try! realm.write {
            realm.add(cheese)
            realm.add(tomato)
        }
        
        // Fetch Tomato
        
        let fetchedTomato = realm.objects(Ingredient.self).filter("name == 'Cheese'").first
        print("fetchedTomato?.name \(fetchedTomato?.name)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
