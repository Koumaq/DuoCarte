//
//  TypeController.swift
//  DuoCarte
//
//  Created by Maxime Blaess on 07/10/2022.
//

import Foundation
import UIKit

class TypeController: UIViewController {

    
    var Typemonstre: Typesmonstres = .bete
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view. fff test
    }

    @IBAction func bete(_ sender: Any) {
        Typemonstre = .bete
        self.performSegue(withIdentifier: "toListeType", sender: nil)
    }
    @IBAction func elemental(_ sender: Any) {
        Typemonstre = .elemental
        self.performSegue(withIdentifier: "toListeType", sender: nil)
    }
    @IBAction func meca(_ sender: Any) {
        Typemonstre = .meca
        self.performSegue(withIdentifier: "toListeType", sender: nil)
    }
    @IBAction func murloc(_ sender: Any) {
        Typemonstre = .murloc
        self.performSegue(withIdentifier: "toListeType", sender: nil)
    }
    @IBAction func naga(_ sender: Any) {
        Typemonstre = .naga
        self.performSegue(withIdentifier: "toListeType", sender: nil)
    }
    @IBAction func pirate(_ sender: Any) {
        Typemonstre = .pirate
        self.performSegue(withIdentifier: "toListeType", sender: nil)
    }
    @IBAction func demon(_ sender: Any) {
        Typemonstre = .demon
        self.performSegue(withIdentifier: "toListeType", sender: nil)
    }
    @IBAction func huran(_ sender: Any) {
        Typemonstre = .huran
        self.performSegue(withIdentifier: "toListeType", sender: nil)
    }
    @IBAction func dragon(_ sender: Any) {
        Typemonstre = .dragon
        self.performSegue(withIdentifier: "toListeType", sender: nil)
    }
    @IBAction func totem(_ sender: Any) {
        Typemonstre = .totem
        self.performSegue(withIdentifier: "toListeType", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toListeType" {
            
            if let navController = segue.destination as? UINavigationController {
                if let controller = navController.viewControllers[0] as? ListeTypeController {
                    controller.Typemonstre = self.Typemonstre
                    
                }
            }
        }
    }
}
