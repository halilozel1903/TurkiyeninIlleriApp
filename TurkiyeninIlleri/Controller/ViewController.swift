//
//  ViewController.swift
//  TurkiyeninIlleri
//
//  Created by Halil Özel on 15.10.2018.
//  Copyright © 2018 Halil Özel. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController, GADInterstitialDelegate {
    

    @IBOutlet weak var banner_anasayfa: GADBannerView!
    
    var interstitial1: GADInterstitial!
    var interstitial2: GADInterstitial!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.red]
        
        banner_anasayfa.adUnitID = "ca-app-pub-4317187826403980/1675099394"
        banner_anasayfa.rootViewController = self
        banner_anasayfa.load(GADRequest())
        
        interstitial1 = GADInterstitial(adUnitID: "ca-app-pub-3940256099942544/4411468910")
        let request1 = GADRequest()
        interstitial1.load(request1)
        interstitial1.delegate = self
        
    
        interstitial2 = GADInterstitial(adUnitID: "ca-app-pub-3940256099942544/4411468910")
        let request2 = GADRequest()
        interstitial2.load(request2)
        interstitial2.delegate = self

        

    }

    @IBAction func weather(_ sender: Any) {
        if interstitial1.isReady {
            interstitial1.present(fromRootViewController: self)
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "WeatherStoryboardID")
            self.show(vc!, sender: nil)
        } else {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "WeatherStoryboardID")
            self.show(vc!, sender: nil)
        }
        
    }
    @IBAction func contact(_ sender: Any) {
        if interstitial2.isReady {
            interstitial2.present(fromRootViewController: self)
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "ContactStoryboardID")
            self.show(vc!, sender: nil)
        }else{
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "ContactStoryboardID")
            self.show(vc!, sender: nil)
        }
        
        
    }
    
    @IBAction func cities(_ sender: Any) {
       
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "CityStoryboardID")
            self.show(vc!, sender: nil)
    
      
    }
    
    
    @IBAction func quiz(_ sender: Any) {
       
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "QuizStoryboardID")
                self.show(vc!, sender: nil)
        
        
    }
    
    func createAndLoadInterstitial() -> GADInterstitial {
        let interstitial1 = GADInterstitial(adUnitID: "ca-app-pub-3940256099942544/4411468910")
        interstitial1.delegate = self
        interstitial1.load(GADRequest())
        
        return interstitial1
        
    }
    
    func createAndLoadInterstitial2() -> GADInterstitial {
        let interstitial2 = GADInterstitial(adUnitID: "ca-app-pub-3940256099942544/4411468910")
        interstitial2.delegate = self
        interstitial2.load(GADRequest())
        
        return interstitial2
        
    }
    
    
    func interstitialDidDismissScreen(_ ad: GADInterstitial) {
        
         interstitial1 = createAndLoadInterstitial()
         interstitial2 = createAndLoadInterstitial()
      
    }
    
   
   
}

