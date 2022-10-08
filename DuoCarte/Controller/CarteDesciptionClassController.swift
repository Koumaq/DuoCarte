//
//  CarteDesciptionClassController.swift
//  DuoCarte
//
//  Created by Maxime Blaess on 06/10/2022.
//

import Foundation
import UIKit
import WebKit


class CarteDesciptionClassController: UIViewController {
    

    @IBOutlet weak var nom: UILabel!
    @IBOutlet weak var atk: UILabel!
    @IBOutlet weak var heal: UILabel!
    @IBOutlet weak var manaCost: UILabel!
    
    @IBOutlet weak var imgCarte: UIImageView!
    var carte: Carte? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let safecartes = carte {
            
            self.nom.text = safecartes.name
            if let url = URL(string: safecartes.image),let imgData = try? Data(contentsOf: url) {
               let img = UIImage(data: imgData)
                self.imgCarte.image = img
                
                self.atk.text = ("Attaque :  \(safecartes.attack)")
                self.heal.text = ("Vie :  \(safecartes.health)")
                self.manaCost.text = ("Mana :  \(safecartes.manaCost)")
            }
            
        }
    }
    
}
