//
//  ViewController.swift
//  DuoCarte
//
//  Created by Maxime Blaess on 30/09/2022.
//

import Foundation
import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var listClass: UIButton!
    @IBOutlet weak var BListeCarte: UIButton!
    @IBOutlet weak var allB: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view. fff test
    }

    @IBAction func AffallCarte(_ sender: Any) {
        
        self.performSegue(withIdentifier: "toRNGcarte", sender: nil)
    }
    
    @IBAction func AffListeCarte(_ sender: Any) {
        self.performSegue(withIdentifier: "toListeCarte", sender: nil)
    }
    
    @IBAction func AffListeClass(_ sender: Any) {
        self.performSegue(withIdentifier: "toClass", sender: nil)
    }
    
}

