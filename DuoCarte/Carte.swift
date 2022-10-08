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
    var def: String
    
    init(name: String, id: Int, image: String,attack: Int,health: Int,manaCost: Int,def :String){
        self.name = name
        self.id = id
        self.image = image
        self.attack = attack
        self.health = health
        self.manaCost = manaCost
        self.def = def
    }
}
