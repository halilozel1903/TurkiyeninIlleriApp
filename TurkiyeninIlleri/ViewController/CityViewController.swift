//
//  CityViewController.swift
//  TurkiyeninIlleri
//
//  Created by Halil Özel on 28.10.2018.
//  Copyright © 2018 Halil Özel. All rights reserved.
//

import UIKit

class CityViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
        <#code#>
    }

   

}
