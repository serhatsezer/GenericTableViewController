//
//  ViewController.swift
//  AdvanceGenericsReusableUI
//
//  Created by Serhat Sezer on 10.08.2018.
//  Copyright © 2018 Serhat Sezer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let button: UIButton = {
        let b = UIButton(type: .roundedRect)
        b.frame = CGRect(x: 50, y: 120, width: 50, height: 20)
        b.setTitle("Click!", for: .normal)
        return b
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(button)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    @objc func buttonTapped() {
        let listController = FoodListViewController()
        present(listController, animated: true, completion: nil)
    }


}

