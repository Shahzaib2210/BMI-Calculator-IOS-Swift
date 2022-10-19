//
//  BmiResultViewController.swift
//  BMI Calculator
//
//  Created by Shahzaib on 11/18/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class BmiResultViewController: UIViewController {
    
    //************************************************//
    // MARK:- Creating Outlets.
    //************************************************//
    
    @IBOutlet weak var bmiResultLabel: UILabel!
    @IBOutlet weak var bmiAdvice: UILabel!
    
    //************************************************//
    // MARK: Creating properties.
    //************************************************//
    
    var bmiValue : String?
    var advice: String?
    var color: UIColor?
    
    //************************************************//
    // MARK:- View life Cycle
    //************************************************//
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiResultLabel.text = bmiValue
        bmiAdvice.text = advice
        view.backgroundColor = color
    }
    
    //************************************************//
    // MARK:- IBActions.
    //************************************************//
    
    @IBAction func RecalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
