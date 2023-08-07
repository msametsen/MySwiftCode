//
//  TableViewHucre.swift
//  Custom Cell Table View
//
//  Created by Samet on 6.08.2023.
//

import UIKit

protocol TableViewHucreProtocol {
    func hucreUzerindekiButtonTiklandi(indexPath:IndexPath)
}

class TableViewHucre: UITableViewCell {

    @IBOutlet weak var kisiAdLabel: UILabel!
    
    var hucreProtocol:TableViewHucreProtocol?
    var indexPath:IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

    @IBAction func buttonTikla(_ sender: Any) {
        
        hucreProtocol?.hucreUzerindekiButtonTiklandi(indexPath: indexPath!)
        
    }
    
    
    
}
