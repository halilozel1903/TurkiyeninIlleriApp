//
//  ViewController.swift
//  TurkiyeninIlleri
//
//  Created by Halil Özel on 15.10.2018.
//  Copyright © 2018 Halil Özel. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {
    

    @IBOutlet weak var banner_anasayfa: GADBannerView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.red]
        
        banner_anasayfa.adUnitID = "ca-app-pub-4317187826403980/1675099394"
        banner_anasayfa.rootViewController = self
        banner_anasayfa.load(GADRequest())
        
        

    }

    @IBAction func weather(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "WeatherStoryboardID")
        self.show(vc!, sender: nil)
    }
    @IBAction func contact(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ContactStoryboardID")
        self.show(vc!, sender: nil)
    }
    
    @IBAction func cities(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CityStoryboardID")
        self.show(vc!, sender: nil)
    }
    
    
    @IBAction func quiz(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "QuizStoryboardID")
        self.show(vc!, sender: nil)
    }
    
}

