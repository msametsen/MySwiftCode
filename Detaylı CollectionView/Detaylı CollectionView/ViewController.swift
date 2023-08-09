//
//  ViewController.swift
//  Detaylı CollectionView
//
//  Created by Samet on 9.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var filmCollectionView: UICollectionView!
    
    var filmlerListesi = [Filmler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TASARIMI ŞEKİLLENDİRME VE DAHA GÜZEL GÖRÜNÜR HALE GETİRME
        //BURALARA YORUM SATIRI ATMAMIN SEBEBİ CONSTRETLERİM AYNI OLMADIĞI İÇİN KAYMA YAŞANDI
        
        //let tasarim:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        //let genislik = self.filmCollectionView.frame.size.width
        //tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        //tasarim.minimumInteritemSpacing = 10
        //tasarim.minimumLineSpacing = 10
        //let hucreGenislik = (genislik-30)/2
        //tasarim.itemSize = CGSize(width: hucreGenislik, height: hucreGenislik*1.85)
        //ilmCollectionView!.collectionViewLayout = tasarim //Yaptığım boyutlandırmaları bağladık
        
        
        //Tasarım şekillendirme bitti
        
        
        
        
        filmCollectionView.delegate = self
        filmCollectionView.dataSource = self
        
        let f1 = Filmler(filmId: 1, filmBaslik: "Django", filmResimAdı: "django", filmFiyat: 15.99)
        let f2 = Filmler(filmId: 2, filmBaslik: "Inception", filmResimAdı: "inception", filmFiyat: 15.99)
        let f3 = Filmler(filmId: 3, filmBaslik: "Interstellar", filmResimAdı: "interstellar", filmFiyat: 15.99)
        let f4 = Filmler(filmId: 4, filmBaslik: "Anadoluda", filmResimAdı: "birzamanlaranadoluda", filmFiyat: 15.99)
        let f5 = Filmler(filmId: 5, filmBaslik: "The Hateful Eight", filmResimAdı: "thehatefuleight", filmFiyat: 15.99)
        let f6 = Filmler(filmId: 6, filmBaslik: "The Painist", filmResimAdı: "thepianist", filmFiyat: 15.99)
        
        
        filmlerListesi.append(f1)
        filmlerListesi.append(f2)
        filmlerListesi.append(f3)
        filmlerListesi.append(f4)
        filmlerListesi.append(f5)
        filmlerListesi.append(f6)
        
    }


}




extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource,FilmHucreProtocol{
    
    func sepeteEkle(indexPath: IndexPath) {
        let film = filmlerListesi[indexPath.row]
        print("\(film.filmBaslik!) filmi sipariş verildi.")
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filmlerListesi.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let film = filmlerListesi[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "filmHucre", for: indexPath) as! FilmHucre
        
        cell.filmAdiLabel.text = film.filmBaslik!
        cell.filmFiyatLabel.text = "\(film.filmFiyat!) TL"
        cell.filmImageView.image = UIImage(named: film.filmResimAdı!)
        
        
        cell.hucreProtocol = self
        cell.indexPath = indexPath
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let film = filmlerListesi[indexPath.row]
        print("\(film.filmBaslik!) filmi seçildi.")
    }
    
}
