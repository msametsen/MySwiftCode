//
//  ViewController.swift
//  TextField ile PickerView Kullanimi
//
//  Created by Samet on 4.08.2023.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var textfieldUlke: UITextField!
    
    
    var pickerView:UIPickerView?
    
    var ulkeler:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ulkeler = ["Türkiye","Almanya","Japonya","Rusya","İtalya"]
        
        pickerView = UIPickerView()
        pickerView?.dataSource = self
        pickerView?.delegate = self
        
        textfieldUlke.inputView = pickerView
          
        //KOD İLE TOOLBAR EKLİYORUZ
        
        let toolbar = UIToolbar()
        toolbar.tintColor = UIColor.red
        toolbar.sizeToFit()
        
        let tamamButton = UIBarButtonItem(title: "Tamam", style: .plain, target: self, action: #selector(ViewController.tamamTikla))
        
        let boslukButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        let iptalButton = UIBarButtonItem(title: "İptal", style: .plain, target: self, action: #selector(ViewController.iptalTikla))
        
        toolbar.setItems([iptalButton,boslukButton,tamamButton], animated: true)
        
        textfieldUlke.inputAccessoryView = toolbar
        
        
        
        
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }//Kaç sütun olacağını gösteren kod
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ulkeler.count
    }//Kaç veri olacağı
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ulkeler[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textfieldUlke.text = ulkeler[row]
    }//HAngi veriyi seçtiysen label'a onu yazdıran kod budur
    
    
    @objc func tamamTikla(){
        view.endEditing(true)
    }
    
    @objc func iptalTikla(){
        view.endEditing(true) //iptal tıklandığında kapatması için
    }
    


}

