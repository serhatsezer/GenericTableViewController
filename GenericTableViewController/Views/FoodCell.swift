//
//  SoccerCell.swift
//  AdvanceGenericsReusableUI
//
//  Created by Serhat Sezer on 10.08.2018.
//  Copyright © 2018 Serhat Sezer. All rights reserved.
//

import UIKit

class FoodCell: BaseTableViewCell<Food> {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override var item: Food? {
        didSet {
            guard let model = item else { return }
            textLabel?.text = model.name
            detailTextLabel?.text = "Price: \(model.price)"
        }
    }

}
