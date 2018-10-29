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
    
    var menuImages = [UIImage(named: "adana_meshur"),UIImage(named: "adiyaman_meshur")]
    
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
            
            return cell!
        }else{
            let cell = sehirtableView.dequeueReusableCell(withIdentifier: "CityDetailCell", for: indexPath) as? CityDetailTableViewCell
            
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
