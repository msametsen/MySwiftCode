//
//  ViewController.swift
//  WebviewKullanimi
//
//  Created by Samet on 18.07.2023.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webview: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let url = URL(string: "https://gelecegiyazanlar.turkcell.com.tr/")!
        
        webview.load(URLRequest(url: url))
        
    }


}

