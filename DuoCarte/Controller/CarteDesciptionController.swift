//
//  CarteDesciptionController.swift
//  DuoCarte
//
//  Created by Maxime Blaess on 01/10/2022.
//

import Foundation
import UIKit
import WebKit


class CarteDesciptionController: UIViewController {
    
    @IBOutlet weak var nom: UILabel!
    @IBOutlet weak var atk: UILabel!
    @IBOutlet weak var heal: UILabel!
    @IBOutlet weak var manaCost: UILabel!
    var carte: Carte? = nil
    
    @IBOutlet weak var imgCarte: UIImageView!
    
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
