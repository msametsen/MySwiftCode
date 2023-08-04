//
//  ViewController.swift
//  Cok Bolumlu Table View
//
//  Created by Samet on 4.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    var bolumler = ["Meyveler","Renkler","Mevsimler"]
    
    var bolumVerileri = [["Elma","Muz","Ayva","Çilek"],["Kırmızı","Mavi","Yeşil"],["Yaz","Kış"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
}




extension ViewController:UITableViewDataSource,UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return bolumler.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bolumVerileri[section].count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return bolumler[section]
    }//Bölüm isimleri için bu kodu kullandık
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "hucreadi", for:indexPath)
        
        cell.textLabel?.text = bolumVerileri[indexPath.section][indexPath.row]
        
        return cell
    }
    
    //HANGİ BÖLÜMDEN HANGİ VERİ SEÇİLDİ ONU GÖRMEK İÇİN ALT TARAFDAKİ KOD KULLAN
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(bolumler[indexPath.section]) bölümünden \(bolumVerileri[indexPath.section][indexPath.row]) seçildi")
    }
    
    
}
