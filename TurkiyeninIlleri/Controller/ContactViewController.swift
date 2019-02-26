//
//  ContactViewController.swift
//  TurkiyeninIlleri
//
//  Created by Halil Özel on 15.10.2018.
//  Copyright © 2018 Halil Özel. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ContactViewController: UIViewController {

    @IBOutlet weak var bannerView: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        bannerView.adUnitID = "ca-app-pub-4317187826403980/1675099394"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        
    }
    

    
   

}
