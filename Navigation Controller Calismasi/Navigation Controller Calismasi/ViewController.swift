//
//  ViewController.swift
//  Navigation Controller Calismasi
//
//  Created by Samet on 3.07.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.navigationItem.title  = "Başlık Kod İle"
        self.navigationItem.prompt = "Açıklama Kod İle"
        
//KOD İLE DEĞİŞTİRDİĞİN BAŞLIK GÖRÜNMESİ İÇİN UYGULAMAYI ÇALIŞTIRMAN GEREK MAİN'DE GÖZÜKMEZ
          
        
        
        //BAŞLIĞA RESİM EKLEME
        
        //let resim = UIImage(named: "NavBaslik")
        
        //self.navigationItem.titleView = UIImageView(image: resim)
        
    }

    @IBAction func KalpTikla(_ sender: Any) {
        print("Kalp Tiklandi")
    }
    
    
    @IBAction func segmentTiklandi(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex{
        case 0:
            print("First Tiklandi")
        case 1:
            print("Second Tiklandi")
        default :
            break
        }
        
    }
    
    
}

