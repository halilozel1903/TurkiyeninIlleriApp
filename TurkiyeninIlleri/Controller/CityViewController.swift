//
//  CityViewController.swift
//  TurkiyeninIlleri
//
//  Created by Halil Özel on 28.10.2018.
//  Copyright © 2018 Halil Özel. All rights reserved.
//

import UIKit

class CityViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    
    var selectedRow = 0
    
    var menuImages = [UIImage(named: "adana_meshur"),UIImage(named: "adiyaman_meshur"),UIImage(named: "afyon_meshur")]
    
    var menuNames = ["Adana","Adıyaman","Afyon"]
    
    var menuDetails = ["\n\nBulunduğu Bölge : Akdeniz \n\nYüz ölçümü : 13.844 km2 \n\nMeşhur Yemekleri : Kebap, Analı Kızlı Çorbası, Yüksük Çorbası, Karakuş Tatlısı, Hamiş, Mahluta Çorbası, Karsambaç, Şırdan, Aşlama, Bici Bici \n\nTelefon Kodu : 322 \n\nGezilecek Yerler : Ulu Camii,Büyük Saat, Taşköprü, Yağ Camii, Ramazanoğlu Konağı, Kurtkulağı Kervansarayı, Mestanzade Hamamı, Misis Köprüsü, Kemeraltı Camii, Tepebağ Evleri \n\nİlçeleri : Aladağ, Ceyhan, Çukurova, Feke, İmamoğlu, Karaisalı, Karataş, Kozan‎, Pozantı‎, Saimbeyli, Sarıçam, Seyhan, Tufanbeyli‎, Yumurtalık‎, Yüreğir",
                       
                       "Turkish is a nation straddling eastern Europe and western Asia with cultural connections to ancient Greek, Persian, Roman, Byzantine and Ottoman empires. Cosmopolitan Istanbul, on the Bosphorus Strait, is home to the iconic Hagia Sophia, with its soaring dome and Christian mosaics, the massive 17th-century Blue Mosque and the circa-1460 Topkapı Palace, former home of sultans. Ankara is Turkey’s modern capital.Turkish is a nation straddling eastern Europe and western Asia with cultural connections to ancient Greek, Persian, Roman, Byzantine and Ottoman empires. Cosmopolitan Istanbul, on the Bosphorus Strait, is home to the iconic Hagia Sophia, with its soaring dome and Christian mosaics, the massive 17th-century Blue Mosque and the circa-1460 Topkapı Palace, former home of sultans. Ankara is Turkey’s modern capital."]
    
    
    
    @IBOutlet weak var sehirtableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sehirtableView.dataSource = self
        sehirtableView.delegate = self
        
        sehirtableView.tableFooterView = UIView()
        
        
        sehirtableView.estimatedRowHeight = 220
        sehirtableView.rowHeight = UITableView.automaticDimension
        
        
        

    }
    
    
    // 1.zorunlu fonksiyon
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    
    // 2.zorunlu fonksiyon
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if indexPath.row == 0{
            let cell = sehirtableView.dequeueReusableCell(withIdentifier: "CityImageCell", for: indexPath) as? CityImageTableViewCell
            
            cell?.imageMeshur.image = menuImages[selectedRow]
            
            
            return cell!
        }else if indexPath.row == 1{
            let cell = sehirtableView.dequeueReusableCell(withIdentifier: "CityNameCell", for: indexPath) as? CityNameTableViewCell
            cell?.nameMeshur.text = menuNames[selectedRow]

            
            return cell!
        }else{
            let cell = sehirtableView.dequeueReusableCell(withIdentifier: "CityDetailCell", for: indexPath) as? CityDetailTableViewCell
            cell?.menuDetail.text = menuDetails[selectedRow]
            
            return cell!
        }
        
    }

        // row - height için zorunlu metodlar
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
 

}
