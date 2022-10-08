//
//  ClassController.swift
//  DuoCarte
//
//  Created by Maxime Blaess on 06/10/2022.
//

import Foundation
import UIKit

class ClassController: UIViewController {

    
    var classe: Classes = .chaman
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view. fff test
    }

    @IBAction func Chaman(_ sender: Any) {
        classe = .chaman
        self.performSegue(withIdentifier: "toListeClass", sender: nil)
    }
    @IBAction func voler(_ sender: Any) {
        classe = .voler
        self.performSegue(withIdentifier: "toListeClass", sender: nil)
    }
    @IBAction func Paladin(_ sender: Any) {
        classe = .paladin
        self.performSegue(withIdentifier: "toListeClass", sender: nil)
    }
    
    @IBAction func Chasseur(_ sender: Any) {
        classe = .chasseur
        self.performSegue(withIdentifier: "toListeClass", sender: nil)
    }
    
    @IBAction func Mage(_ sender: Any) {
        classe = .mage
        self.performSegue(withIdentifier: "toListeClass", sender: nil)
    }
    
    @IBAction func Druide(_ sender: Any) {
        classe = .druide
        self.performSegue(withIdentifier: "toListeClass", sender: nil)
    }
    
    @IBAction func Pretre(_ sender: Any) {
        classe = .pretre
        self.performSegue(withIdentifier: "toListeClass", sender: nil)
    }
    @IBAction func demoniste(_ sender: Any) {
        classe = .demoniste
        self.performSegue(withIdentifier: "toListeClass", sender: nil)
    }
    
    @IBAction func ChasseurDeDemon(_ sender: Any) {
        classe = .chasseurDeDemon
        self.performSegue(withIdentifier: "toListeClass", sender: nil)
    }
    
    @IBAction func Guerrier(_ sender: Any) {
        classe = .guerrier
        self.performSegue(withIdentifier: "toListeClass", sender: nil)
    }
    
    @IBAction func Neutre(_ sender: Any) {
        classe = .neutre
        self.performSegue(withIdentifier: "toListeClass", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toListeClass" {
            
            if let navController = segue.destination as? UINavigationController {
                if let controller = navController.viewControllers[0] as? ListeClassController {
                    controller.classe = self.classe
                }
            }
        }
    }
}
