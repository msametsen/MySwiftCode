//
//  ViewController.swift
//  Search Bar Kullanımı
//
//  Created by Samet on 10.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        searchBar.delegate = self
        searchBar.showsScopeBar = true
        searchBar.scopeButtonTitles = ["Birinci","İkinci"] //search barın altındaki ksımın ismini değiştirdik
        
        
        
    }


}



extension ViewController:UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Arama Sonuc : \(searchText)")
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        print("Cancel Seçildi")
    } //cancel butonunu aktif eden kod
    
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        if selectedScope == 0 {
            print("Birinci Seçildi")
        }
        if selectedScope == 1 {
            print("İkinci Seçildi")
        }
        
    }
}

