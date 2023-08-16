//
//  ViewController.swift
//  File Islemleri Uygulama
//
//  Created by Samet on 16.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textfieldGirdi: UITextField!
    
    @IBOutlet weak var resimTutucu: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    
    @IBAction func yaz(_ sender: Any) {
        
        let mesaj:String = textfieldGirdi.text!
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let dosyaYolu = dir.appendingPathComponent("dosyam.txt")
            
            do{
                
                try mesaj.write(to: dosyaYolu, atomically: false, encoding:String.Encoding.utf8)
                
                textfieldGirdi.text = ""
                
            }catch{
                print("Dosya YAzılırken Hata Oluştu")
            }
            
        }
        
        
        
        
        
    }
    @IBAction func oku(_ sender: Any) {
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let dosyaYolu = dir.appendingPathComponent("dosyam.txt")
            
            do{
                
                textfieldGirdi.text = try String(contentsOf: dosyaYolu, encoding:String.Encoding.utf8)
                
                
            }catch{
                print("Dosya Okurken Hata Oluştu")
            }
            
        }
        
        
        
    }
    @IBAction func sil(_ sender: Any) {
        
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let dosyaYolu = dir.appendingPathComponent("dosyam.txt")
            
            if FileManager.default.fileExists(atPath: dosyaYolu.path) {
                
                do{
                    
                    try FileManager.default.removeItem(at: dosyaYolu)
                    textfieldGirdi.text = ""
                    
                    
                }catch{
                    print("Dosya Silerken Hata Oluştu")
                }
                
                
            }
            
            
        }
        
        
    }
    
    @IBAction func resimKaydet(_ sender: Any) {
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let dosyaYolu = dir.appendingPathComponent("resimim.png")
            
            let resim = UIImage(named:"resim")
            
            do{
                
                try resim!.pngData()?.write(to: dosyaYolu)
                
                
            }catch{
                print("Resim Okurken Hata Oluştu")
            }
            
            
        }
        
    }
    
    @IBAction func resimGöster(_ sender: Any) {
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let dosyaYolu = dir.appendingPathComponent("resimim.png")
            
            
            self.resimTutucu.image = UIImage(contentsOfFile: dosyaYolu.path)
            
            //Burda do try catch gerek kalmadı
            
        }
        
    }
    @IBAction func resimSil(_ sender: Any) {
        
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let dosyaYolu = dir.appendingPathComponent("resimim.png")
            
            if FileManager.default.fileExists(atPath: dosyaYolu.path) {
                
                do{
                    
                    try FileManager.default.removeItem(at: dosyaYolu)
                    
                    
                    
                }catch{
                    print("Resim Silerken Hata Oluştu")
                }
                
                
            }
            
            
            
        }
        
        
        
    }
    
}
