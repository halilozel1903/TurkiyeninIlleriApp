//
//  ViewController.swift
//  TurkiyeninIlleri
//
//  Created by Halil Özel on 15.10.2018.
//  Copyright © 2018 Halil Özel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    


    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func contact(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ContactStoryboardID")
        self.show(vc!, sender: nil)
    }
    
}

