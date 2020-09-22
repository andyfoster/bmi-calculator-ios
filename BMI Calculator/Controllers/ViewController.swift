//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let heightString = String(format: "%.2f", sender.value)
        heightLabel.text = "\(heightString)m"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weightString = Int(sender.value)
        weightLabel.text = "\(weightString)Kg"
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let calculatedBmi = weight/pow(height, 2)
        print(calculatedBmi)
        
        let secondVC = SecondViewController()
        secondVC.bmiValue = String(format: "%.1f", calculatedBmi)
        self.present(secondVC, animated: true, completion: nil)
    }
    
}

