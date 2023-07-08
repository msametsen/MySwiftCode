//
//  ViewController.swift
//  ImageView
//
//  Created by Samet on 8.07.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func resim1Tikla(_ sender: Any) {
        
        imageView.image = UIImage(named: "resim") //Her tıkladığında o isimli resmi getir
        
    }
    
    
    @IBAction func resim2Tikla(_ sender: Any) {
        
        imageView.image = UIImage(named: "resim2") //HEr tıklandığında o isimli resmi getir
        
    }
    
}

