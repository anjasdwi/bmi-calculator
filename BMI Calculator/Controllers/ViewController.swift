//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateController: UIViewController {

    @IBOutlet weak var labelHeight: UILabel!
    @IBOutlet weak var labelWeight: UILabel!
    @IBOutlet weak var heightUISlider: UISlider!
    @IBOutlet weak var weightUISlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func handleHeight(_ sender: UISlider) {
        let height = String(format:"%.2f", sender.value)
        labelHeight.text = "\(height)m"
    }
    
    @IBAction func handleWeight(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        labelWeight.text = "\(weight)Kg"
    }
    
    @IBAction func handleCalculate(_ sender: UIButton) {
        let height = heightUISlider.value
        let weight = weightUISlider.value
        
        let BMI = weight / (height*height)
        let secondVC = SecondViewController()
        secondVC.bmiValue = String(format: "%.1f", BMI)
        
        self.present(secondVC, animated: true, completion: nil)
    }
}

