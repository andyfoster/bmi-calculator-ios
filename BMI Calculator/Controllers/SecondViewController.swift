//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Andy Foster on 9/20/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var bmiValue = "0.0"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.green
        
        let label = UILabel()
        label.text = bmiValue
        label.backgroundColor = .red
        label.frame = CGRect(x: 100, y: 80, width: 100, height: 50)
        view.addSubview(label)
    }
}
