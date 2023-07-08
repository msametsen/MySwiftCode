//
//  ViewController.swift
//  Toolbar Calismasi
//
//  Created by Samet on 6.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiket: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func geriButton(_ sender: Any) {
        etiket.text = "Geri"
    }
    
    
    @IBAction func oynatButton(_ sender: Any) {
        etiket.text = "Oynat"
    }
    
    @IBAction func homeButton(_ sender: Any) {
        etiket.text = "Home"
    }
}

