//
//  ViewController.swift
//  Custom Cell Table View
//
//  Created by Samet on 6.08.2023.
//

//NOT: BAŞKA BİR SINIFTAN TETİKLECEĞEN BİR İŞLEMİ ÖRNEĞİN BUTON TETİKLEME İŞLEMİNİ FARKLI SINIFTAN YAPACAKSAN PROTOCOL KULLANILIR



import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var kisilerTableView: UITableView!
    
    
    var kisilerListe = [Kisiler]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        kisilerTableView.delegate = self
        kisilerTableView.dataSource = self
        
        let k1 = Kisiler(kisiId: 1, kisiAd: "Samet", kisiTel: "021232131")
        let k2 = Kisiler(kisiId: 2, kisiAd: "Baran", kisiTel: "235423525")
        let k3 = Kisiler(kisiId: 3, kisiAd: "Zeynep", kisiTel: "457645753")
        let k4 = Kisiler(kisiId: 4, kisiAd: "Ece", kisiTel: "576856445")
        let k5 = Kisiler(kisiId: 5, kisiAd: "Kemal", kisiTel: "234557658")
        
        kisilerListe.append(k1)
        kisilerListe.append(k2)
        kisilerListe.append(k3)
        kisilerListe.append(k4)
        kisilerListe.append(k5)
        
    }


}




extension ViewController:UITableViewDataSource,UITableViewDelegate,TableViewHucreProtocol {
    
    func hucreUzerindekiButtonTiklandi(indexPath: IndexPath) {
        print("Button tıklandi : \(kisilerListe[indexPath.row].kisiAd!)")
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kisilerListe.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let gelenKisi = kisilerListe[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "kisilerHucre", for: indexPath) as! TableViewHucre
        
        cell.kisiAdLabel.text = "\(gelenKisi.kisiAd!)-\(gelenKisi.kisiTel!)"
        
        cell.hucreProtocol = self
        cell.indexPath = indexPath
        
        return cell
    }
    
    //SEÇTİĞİN VERİDE ÜSTÜNE TIKLAMAYI SAĞLAR
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let gelenKisi = kisilerListe[indexPath.row]
    }
    
    
    
}
