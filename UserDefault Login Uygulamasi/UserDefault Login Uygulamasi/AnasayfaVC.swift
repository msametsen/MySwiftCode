//
//  AnasayfaVC.swift
//  UserDefault Login Uygulamasi
//
//  Created by Samet on 15.08.2023.
//

import UIKit

class AnasayfaVC: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    
    let d = UserDefaults.standard
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        navigationItem.hidesBackButton = true //Geri button gizledik
        
        let ka = d.string(forKey: "kullaniciAdi") ?? "bos"
        
        labelSonuc.text = ka //Kullanıcı adı ne girildiyse label da görüntülemek için

        
    }
    
    @IBAction func cikisYap(_ sender: Any) {
        
        //cikis yap button tıklanınıca kullanıcı adı ve şifreyi silmek için kodlar
        d.removeObject(forKey: "kullaniciAdi")
        d.removeObject(forKey: "sifre")
        
        exit(-1) //Ana ekrana atan kod
        
    }
    
  

}
