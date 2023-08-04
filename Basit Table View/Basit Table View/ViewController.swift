//
//  ViewController.swift
//  Basit Table View
//
//  Created by Samet on 4.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var ulkeler:[String] = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ulkeler = ["Türkiye","Almanya","Japonya","Rusya","İtalya","Güney kore","Fransa","Mısır"]
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    

    
}
  //EXTENSİON KULLANACAĞIZ BUNDAN SONRA DAHA BASİT VE ANLAŞILIR NOT:CLASS DIŞINDA YAZILIR

extension ViewController:UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ulkeler.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "hucreadi" , for: indexPath)
        
        cell.textLabel?.text = ulkeler[indexPath.row]
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Seçilen Ülke : \(ulkeler[indexPath.row])")
    }
    
    
}
