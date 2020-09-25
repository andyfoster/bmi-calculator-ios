//
//  ViewController.swift
//  BMI Calculator
//
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
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
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValueAsString()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    
}

