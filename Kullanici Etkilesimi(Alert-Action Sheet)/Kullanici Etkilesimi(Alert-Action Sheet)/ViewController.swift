//
//  ViewController.swift
//  Kullanici Etkilesimi(Alert-Action Sheet)
//
//  Created by Samet on 19.07.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelSonuc: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    
    @IBAction func basitAlertGoster(_ sender: Any) {
        
        
        let alertController = UIAlertController(title: "Başlık", message: "Dikkat Edin!", preferredStyle: .alert)
        
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel) {
            action in
            print("İptal  Tıklandı")
        }
        
        alertController.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive) {
            action in
            print("Tamam Tıklandı")
        }
        
        alertController.addAction(tamamAction)
        
        self.present(alertController,animated: true)
        
    }
    
    
    
    
    
    
    
    
    
    @IBAction func ozelAlertGoster(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Başlık", message: "Dikkat Edin!", preferredStyle: .alert)
        
        alertController.addTextField { textField in
            textField.placeholder = "Email"
            textField.keyboardType = .emailAddress
            
        }
        
        alertController.addTextField { textField in
            textField.placeholder = "Şifre"
            textField.isSecureTextEntry = true
            
        }
        
        
        let kaydetAction = UIAlertAction(title: "Kaydet", style: .destructive) {
            action in
            print("Kaydet Tıklandı")
            
            let alinanEmail = (alertController.textFields![0] as UITextField).text!
            
            let alinanSifre = (alertController.textFields![1] as UITextField).text!
            
            
            self.labelSonuc.text = "Email:\(alinanEmail) - Şifre:\(alinanSifre)"
            
        }
        
        alertController.addAction(kaydetAction)
        
        self.present(alertController,animated: true)
        
    }
    
    
    
    
    
    
    
    
    
    
    @IBAction func actionSheetGoster(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .actionSheet)
        
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel) {
            action in
            
            print("Action Sheet:İptal Tıklandı")
        }
        
        alertController.addAction(iptalAction)
        
        let tamamaAction = UIAlertAction(title: "Tamam", style: .destructive) {
            action in
            
            print("Action Sheet:TamamTıklandı")
        }
            
        
        alertController.addAction(tamamaAction)
        
        self.present(alertController,animated: true)
        
        
        
    }
    
    
}

//Action Sheet ve alert aynı koda sahip sadece bir yerde .actionSheet diğerinde .alert diyoruz tek fark bu
