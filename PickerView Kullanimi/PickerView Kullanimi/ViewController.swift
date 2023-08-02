//
//  ViewController.swift
//  PickerView Kullanimi
//
//  Created by Samet on 2.08.2023.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var labelSonuc: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    
    var ulkeler:[String] = [String]()
    
    var secilenUlke:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        ulkeler = ["Türkiye","Almanya","Japonya","Rusya","İtalya"]
        
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }//Kaç sütün olacağını gösteren kod
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ulkeler.count
    } //içinde kaç eleman olduğunu gösteren kod .count yaparak dinamik olmasını sağladık
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ulkeler[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        labelSonuc.text = ulkeler[row]
        
        secilenUlke = ulkeler[row]
    } //neyi seçtiysen onu gösteren kod
    

    @IBAction func goster(_ sender: Any) {
        
        print(secilenUlke!)
        
    }
    
}

