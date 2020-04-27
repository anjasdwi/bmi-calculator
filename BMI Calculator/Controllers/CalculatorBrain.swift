//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Anjas Dwi on 27/04/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiPass = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiPass
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height*height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Makan ikan lebih banyak!", color: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1) )
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Sering-sering olahraga!", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1) )
        } else {
            bmi = BMI(value: bmiValue, advice: "Kurangi makan ikan!", color: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1) )
        }
    }
}
