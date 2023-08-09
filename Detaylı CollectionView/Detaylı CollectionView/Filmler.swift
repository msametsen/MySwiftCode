//
//  Filmler.swift
//  Detaylı CollectionView
//
//  Created by Samet on 9.08.2023.
//

import Foundation

class Filmler {
    var filmId:Int?
    var filmBaslik:String?
    var filmResimAdı:String?
    var filmFiyat:Double?
    
    init(){
        
    }
    
    init(filmId:Int,filmBaslik:String,filmResimAdı:String,filmFiyat:Double) {
        self.filmId = filmId
        self.filmBaslik = filmBaslik
        self.filmResimAdı = filmResimAdı
        self.filmFiyat = filmFiyat        
    }
    
}
