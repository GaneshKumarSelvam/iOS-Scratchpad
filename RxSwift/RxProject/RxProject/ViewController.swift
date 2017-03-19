//
//  ViewController.swift
//  RxProject
//
//  Created by Sebastian Boldt on 08.02.17.
//  Copyright © 2017 Sebastian Boldt. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    var data : [String] = ["a","b","c"]
    override func viewDidLoad() {
        super.viewDidLoad()
        setupRxForTableView()
    }
    
    func setupRxForTableView() {
        self.data.bind
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

