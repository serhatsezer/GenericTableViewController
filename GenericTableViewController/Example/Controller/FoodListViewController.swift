//
//  ListTableViewController.swift
//  AdvanceGenericsReusableUI
//
//  Created by Serhat Sezer on 10.08.2018.
//  Copyright © 2018 Serhat Sezer. All rights reserved.
//

import UIKit

class FoodListViewController: BaseTableViewSearchController<FoodCell, Food> {
    
    let foods = [Food(name: "Menemen", price: 10.0),
                         Food(name: "Manti", price: 15.0),
                         Food(name: "Lahmacun", price: 20.0),
                         Food(name: "Kebab", price: 50.0),
                         Food(name: "Borek", price: 100.0),
                         Food(name: "Baklava", price: 30.0),
                         Food(name: "Pide", price: 20.0)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.models = soccerPlayers
    }
}
