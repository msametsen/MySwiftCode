//
//  ViewController.swift
//  Date and Time Picker
//
//  Created by Samet on 2.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfieldSaat: UITextField!
    @IBOutlet weak var textfieldTarih: UITextField!
    
    var datePicker:UIDatePicker?
    
    var timePicker:UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker = UIDatePicker()
        datePicker?.preferredDatePickerStyle = .wheels
        textfieldTarih.inputView = datePicker
        
        
        timePicker = UIDatePicker()
        timePicker?.preferredDatePickerStyle = .wheels
        textfieldSaat.inputView = timePicker
        
        
        
        datePicker?.addTarget(self, action: #selector(self.tarihGoster(datePicker:)), for: .valueChanged) //girdiğin tarihi o boşluğa doldurmasını sağlayan kod budur.
        
        
        timePicker?.addTarget(self, action: #selector(self.saatGoster(timePicker:)), for: .valueChanged)
        
        
        
    }

    @objc func tarihGoster(datePicker:UIDatePicker){
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        let alinanTarih = dateFormatter.string(from: datePicker.date)
        
        
        textfieldTarih.text = alinanTarih
        
        view.endEditing(true)
        
    }
    

    @objc func saatGoster(timePicker:UIDatePicker){
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm"
        
        let alinanSaat = dateFormatter.string(from: timePicker.date)
        
        textfieldSaat.text = alinanSaat
        
    }
    
    
    
}

