//
//  ViewController.swift
//  Bmi Calculator
//
//  Created by Shahzaib Mumtaz on 28/09/2022.
//

import UIKit

class ViewController: UIViewController {
    
    //************************************************//
    // MARK:- Creating Outlets.
    //************************************************//
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSilder: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    //************************************************//
    // MARK: Creating properties.
    //************************************************//
    
    var calculatorBrain = CalculatorBrain()
    
    //************************************************//
    // MARK:- View life Cycle
    //************************************************//
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //************************************************//
    // MARK:- IBActions.
    //************************************************//
    
    @IBAction func heightSliderPressed(_ sender: UISlider) {
        
        let height = String(format: "%.2f", sender.value)
        heightLabel.text! = "\(height)m"
    }
    
    //************************************************//
    
    @IBAction func weightSliderPressed(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text! = "\(weight)Kg"
    }
    
    //************************************************//
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        
        let height = heightSilder.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBmiValue(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "CalculatetoBmiResult", sender: nil)
    }
    
    //************************************************//
    
    // MARK :- Segue Method.
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "CalculatetoBmiResult" {
            
            let destinationVC = segue.destination as! BmiResultViewController
            destinationVC.bmiValue = calculatorBrain.getBmiValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}

