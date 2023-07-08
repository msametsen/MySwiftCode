//
//  ViewController.swift
//  Slider-Stepper
//
//  Created by Samet on 8.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var stepperLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }


    @IBAction func sliderDegisimKontrol(_ sender: UISlider) {
        
        sliderLabel.text = "Slider : \(Int(sender.value))"
        
    }
    
    @IBAction func tikla(_ sender: Any) {
    }
    
    @IBAction func stepperDegisimKontrol(_ sender: UIStepper) {
        stepperLabel.text = "Stepper : \(Int(sender.value))"
    }
}

