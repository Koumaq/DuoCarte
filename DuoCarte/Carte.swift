//
//  Carte.swift
//  
//
//  Created by Maxime Blaess on 30/09/2022.
//

import Foundation

class Carte{
    
    var name: String
    var id: Int
    var image: String
    var attack:Int
    var health: Int
    var manaCost: Int
    
    init(name: String, id: Int, image: String,attack: Int,health: Int,manaCost: Int){
        self.name = name
        self.id = id
        self.image = image
        self.attack = attack
        self.health = health
        self.manaCost = manaCost
    }
}
