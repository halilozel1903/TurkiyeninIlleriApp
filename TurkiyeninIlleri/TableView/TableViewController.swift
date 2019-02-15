//
//  TableViewController.swift
//  TurkiyeninIlleri
//
//  Created by Halil Özel on 25.10.2018.
//  Copyright © 2018 Halil Özel. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController,UISearchBarDelegate,UISearchControllerDelegate {

    @IBOutlet var tableViewCity: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    let cityNames = ["Adana", "Adıyaman", "Afyonkarahisar", "Ağrı", "Amasya", "Ankara", "Antalya", "Artvin",
                     "Aydın", "Balıkesir", "Bilecik", "Bingöl", "Bitlis", "Bolu", "Burdur", "Bursa", "Çanakkale",
                     "Çankırı", "Çorum", "Denizli", "Diyarbakır", "Edirne", "Elazığ", "Erzincan", "Erzurum", "Eskişehir",
                     "Gaziantep", "Giresun", "Gümüşhane", "Hakkari", "Hatay", "Isparta", "Mersin", "İstanbul", "İzmir",
                     "Kars", "Kastamonu", "Kayseri", "Kırklareli", "Kırşehir", "Kocaeli", "Konya", "Kütahya", "Malatya",
                     "Manisa", "Kahramanmaraş", "Mardin", "Muğla", "Muş", "Nevşehir", "Niğde", "Ordu", "Rize", "Sakarya",
                     "Samsun", "Siirt", "Sinop", "Sivas", "Tekirdağ", "Tokat", "Trabzon", "Tunceli", "Şanlıurfa", "Uşak",
                     "Van", "Yozgat", "Zonguldak", "Aksaray", "Bayburt", "Karaman", "Kırıkkale", "Batman", "Şırnak",
                     "Bartın", "Ardahan", "Iğdır", "Yalova", "Karabük", "Kilis", "Osmaniye", "Düzce"]
    
    let cityNumbers = ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56",
                       "57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75",
                        "76","77","78","79","80","81"]
    
     let cityImages = [UIImage(named: "adana"),UIImage(named: "adiyaman"),UIImage(named: "afyon"),
                       UIImage(named: "agri"),UIImage(named: "amasya"),UIImage(named: "ankara"),
                       UIImage(named: "antalya"),UIImage(named: "artvin"),UIImage(named: "aydin"),
                       UIImage(named: "balikesir"),UIImage(named: "bilecik"),UIImage(named: "bingol"),
                       UIImage(named: "bitlis"),UIImage(named: "bolu"),UIImage(named: "burdur"),
                       UIImage(named: "bursa"),UIImage(named: "canakkale"),UIImage(named: "cankiri"),
                       UIImage(named: "corum"),UIImage(named: "denizli"),UIImage(named: "diyarbakir"),
                       UIImage(named: "edirne"),UIImage(named: "elazig"),UIImage(named: "afyon"),
                       UIImage(named: "adana"),UIImage(named: "adiyaman"),UIImage(named: "afyon"),
                       UIImage(named: "adana"),UIImage(named: "adiyaman"),UIImage(named: "afyon"),
                       UIImage(named: "adana"),UIImage(named: "adiyaman"),UIImage(named: "afyon"),
                       UIImage(named: "adana"),UIImage(named: "adiyaman"),UIImage(named: "afyon"),
                       UIImage(named: "adana"),UIImage(named: "adiyaman"),UIImage(named: "afyon"),
                       UIImage(named: "adana"),UIImage(named: "adiyaman"),UIImage(named: "afyon"),
                       UIImage(named: "adana"),UIImage(named: "adiyaman"),UIImage(named: "afyon"),
                       UIImage(named: "adana"),UIImage(named: "adiyaman"),UIImage(named: "afyon"),
                       UIImage(named: "adana"),UIImage(named: "adiyaman"),UIImage(named: "afyon"),
                       UIImage(named: "adana"),UIImage(named: "adiyaman"),UIImage(named: "afyon"),
                       UIImage(named: "adana"),UIImage(named: "adiyaman"),UIImage(named: "afyon"),
                       UIImage(named: "adana"),UIImage(named: "adiyaman"),UIImage(named: "afyon"),
                       UIImage(named: "adana"),UIImage(named: "adiyaman"),UIImage(named: "afyon"),
                       UIImage(named: "adana"),UIImage(named: "adiyaman"),UIImage(named: "afyon"),
                       UIImage(named: "adana"),UIImage(named: "adiyaman"),UIImage(named: "afyon"),
                       UIImage(named: "adana"),UIImage(named: "adiyaman"),UIImage(named: "afyon"),
                       UIImage(named: "adana"),UIImage(named: "adiyaman"),UIImage(named: "afyon"),
                       UIImage(named: "adana"),UIImage(named: "adiyaman"),UIImage(named: "afyon"),
                       UIImage(named: "adana"),UIImage(named: "adiyaman"),UIImage(named: "afyon")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       tableView.tableFooterView = UIView()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cityNames.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? TableViewCell

        cell?.cityName?.text = cityNames[indexPath.row]
        cell?.cityNumber?.text = cityNumbers[indexPath.row]
        cell?.cityIcon?.image = cityImages[indexPath.row]

        return cell!
    }
    
    // hangi row'a tıklandığını öğrendiğimiz function
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let rowNumber = indexPath.row
        // print(rowNumber)
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CitiesStoryboardID") as! CityViewController
        
 
        vc.selectedRow = rowNumber
        

        
        
        self.show(vc, sender: nil)
        
        
        
    }
    
}


