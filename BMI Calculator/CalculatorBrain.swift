//
//  CalculatorBrain.swift
//  BMI Calculator
//
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? .red
    }
        
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight/pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
    }
        
    func getBMIValueAsString() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
}
