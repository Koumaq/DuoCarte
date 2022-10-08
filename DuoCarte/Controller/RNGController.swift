//
//  RNGController.swift
//  DuoCarte
//
//  Created by Maxime Blaess on 30/09/2022.
//

import Foundation
import UIKit

class RNGController: UIViewController{

    @IBOutlet weak var nom: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var i = Int.random(in: 0...499)
        
        HearststoneApi.getCarts().done { cartes in 
            
            self.nom.text = cartes[i].name
            if let url = URL(string: cartes[i].image),let imgData = try? Data(contentsOf: url) {
               let img = UIImage(data: imgData)
               self.img.image = img
            }
        
        }
    }
}
