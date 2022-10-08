//
//  HearthstoneApi.swift
//  DuoCarte
//
//  Created by Maxime Blaess on 30/09/2022.
//

import Foundation
import PromiseKit
import Alamofire
import SwiftyJSON

class HearststoneApi {
    
    static func getCarts() -> Promise<[Carte]> {
        
        var cartes: [Carte] = []
        
        
        
        
        return Promise { seal in
            AF.request("https://eu.api.blizzard.com/hearthstone/cards?locale=fr_FR&pageSize=0&access_token=EUKxZ3cEM9rI0tw3HcLuF5YNE5dswJaoBe").response {response in
                let json = JSON(response.data)
                if let carteJSON = json.dictionaryValue["cards"]?.arrayValue {
                    for carte in carteJSON{
                        cartes.append(Carte(name: carte["name"].stringValue,
                                            id: carte["id"].intValue,
                                            image: carte["image"].stringValue,
                                            attack: carte["attack"].intValue,
                                            health: carte["health"].intValue,
                                            manaCost: carte["manaCost"].intValue)
                        )
                    }
                }
                //print(json)
                //print("working")
                seal.fulfill(cartes)
            }
        }
    }
    // chaman
    static func getCartsChaman() -> Promise<[Carte]> {
        
        var cartes: [Carte] = []
        
        
        
        
        return Promise { seal in
            AF.request("https://eu.api.blizzard.com/hearthstone/cards?locale=fr_FR&class=shaman&pageSize=0&access_token=EUKxZ3cEM9rI0tw3HcLuF5YNE5dswJaoBe").response {response in
                let json = JSON(response.data)
                if let carteJSON = json.dictionaryValue["cards"]?.arrayValue {
                    for carte in carteJSON{
                        cartes.append(Carte(name: carte["name"].stringValue,
                                            id: carte["id"].intValue,
                                            image: carte["image"].stringValue,
                                            attack: carte["attack"].intValue,
                                            health: carte["health"].intValue,
                                            manaCost: carte["manaCost"].intValue)
                        )
                    }
                }
                //print(json)
                //print("working")
                seal.fulfill(cartes)
            }
        }
    }
    
    // Voleur
    static func getCartsVoler() -> Promise<[Carte]> {
        
        var cartes: [Carte] = []
        
        
        
        
        return Promise { seal in
            AF.request("https://eu.api.blizzard.com/hearthstone/cards?locale=fr_FR&class=rogue&pageSize=0&access_token=EUKxZ3cEM9rI0tw3HcLuF5YNE5dswJaoBe").response {response in
                let json = JSON(response.data)
                if let carteJSON = json.dictionaryValue["cards"]?.arrayValue {
                    for carte in carteJSON{
                        cartes.append(Carte(name: carte["name"].stringValue,
                                            id: carte["id"].intValue,
                                            image: carte["image"].stringValue,
                                            attack: carte["attack"].intValue,
                                            health: carte["health"].intValue,
                                            manaCost: carte["manaCost"].intValue)
                        )
                    }
                }
                //print(json)
                //print("working")
                seal.fulfill(cartes)
            }
        }
    }
    
    // Paladin
    static func getCartsPaladin() -> Promise<[Carte]> {
        
        var cartes: [Carte] = []
        
        
        
        
        return Promise { seal in
            AF.request("https://eu.api.blizzard.com/hearthstone/cards?locale=fr_FR&class=paladin&pageSize=0&access_token=EUKxZ3cEM9rI0tw3HcLuF5YNE5dswJaoBe").response {response in
                let json = JSON(response.data)
                if let carteJSON = json.dictionaryValue["cards"]?.arrayValue {
                    for carte in carteJSON{
                        cartes.append(Carte(name: carte["name"].stringValue,
                                            id: carte["id"].intValue,
                                            image: carte["image"].stringValue,
                                            attack: carte["attack"].intValue,
                                            health: carte["health"].intValue,
                                            manaCost: carte["manaCost"].intValue)
                        )
                    }
                }
                //print(json)
                //print("working")
                seal.fulfill(cartes)
            }
        }
    }
    
    // Chasseur
    static func getCartsChasseur() -> Promise<[Carte]> {
        
        var cartes: [Carte] = []
        
        
        
        
        return Promise { seal in
            AF.request("https://eu.api.blizzard.com/hearthstone/cards?locale=fr_FR&class=hunter&pageSize=0&access_token=EUKxZ3cEM9rI0tw3HcLuF5YNE5dswJaoBe").response {response in
                let json = JSON(response.data)
                if let carteJSON = json.dictionaryValue["cards"]?.arrayValue {
                    for carte in carteJSON{
                        cartes.append(Carte(name: carte["name"].stringValue,
                                            id: carte["id"].intValue,
                                            image: carte["image"].stringValue,
                                            attack: carte["attack"].intValue,
                                            health: carte["health"].intValue,
                                            manaCost: carte["manaCost"].intValue)
                        )
                    }
                }
                //print(json)
                //print("working")
                seal.fulfill(cartes)
            }
        }
    }
    // Mage
    static func getCartsMage() -> Promise<[Carte]> {
        
        var cartes: [Carte] = []
        
        
        
        
        return Promise { seal in
            AF.request("https://eu.api.blizzard.com/hearthstone/cards?locale=fr_FR&class=mage&pageSize=0&access_token=EUKxZ3cEM9rI0tw3HcLuF5YNE5dswJaoBe").response {response in
                let json = JSON(response.data)
                if let carteJSON = json.dictionaryValue["cards"]?.arrayValue {
                    for carte in carteJSON{
                        cartes.append(Carte(name: carte["name"].stringValue,
                                            id: carte["id"].intValue,
                                            image: carte["image"].stringValue,
                                            attack: carte["attack"].intValue,
                                            health: carte["health"].intValue,
                                            manaCost: carte["manaCost"].intValue)
                        )
                    }
                }
                //print(json)
                //print("working")
                seal.fulfill(cartes)
            }
        }
    }
    
    // druide
    static func getCartsDruide() -> Promise<[Carte]> {
        
        var cartes: [Carte] = []
        
        
        
        
        return Promise { seal in
            AF.request("https://eu.api.blizzard.com/hearthstone/cards?locale=fr_FR&class=druid&pageSize=0&access_token=EUKxZ3cEM9rI0tw3HcLuF5YNE5dswJaoBe").response {response in
                let json = JSON(response.data)
                if let carteJSON = json.dictionaryValue["cards"]?.arrayValue {
                    for carte in carteJSON{
                        cartes.append(Carte(name: carte["name"].stringValue,
                                            id: carte["id"].intValue,
                                            image: carte["image"].stringValue,
                                            attack: carte["attack"].intValue,
                                            health: carte["health"].intValue,
                                            manaCost: carte["manaCost"].intValue)
                        )
                    }
                }
                //print(json)
                //print("working")
                seal.fulfill(cartes)
            }
        }
    }
    
    // pretre
    static func getCartsPretre() -> Promise<[Carte]> {
        
        var cartes: [Carte] = []
        
        
        
        
        return Promise { seal in
            AF.request("https://eu.api.blizzard.com/hearthstone/cards?locale=fr_FR&class=priest&pageSize=0&access_token=EUKxZ3cEM9rI0tw3HcLuF5YNE5dswJaoBe").response {response in
                let json = JSON(response.data)
                if let carteJSON = json.dictionaryValue["cards"]?.arrayValue {
                    for carte in carteJSON{
                        cartes.append(Carte(name: carte["name"].stringValue,
                                            id: carte["id"].intValue,
                                            image: carte["image"].stringValue,
                                            attack: carte["attack"].intValue,
                                            health: carte["health"].intValue,
                                            manaCost: carte["manaCost"].intValue)
                        )
                    }
                }
                //print(json)
                //print("working")
                seal.fulfill(cartes)
            }
        }
    }
    
    // demoniste
    static func getCartsDemoniste() -> Promise<[Carte]> {
        
        var cartes: [Carte] = []
        
        
        
        
        return Promise { seal in
            AF.request("https://eu.api.blizzard.com/hearthstone/cards?locale=fr_FR&class=warlock&pageSize=0&access_token=EUKxZ3cEM9rI0tw3HcLuF5YNE5dswJaoBe").response {response in
                let json = JSON(response.data)
                if let carteJSON = json.dictionaryValue["cards"]?.arrayValue {
                    for carte in carteJSON{
                        cartes.append(Carte(name: carte["name"].stringValue,
                                            id: carte["id"].intValue,
                                            image: carte["image"].stringValue,
                                            attack: carte["attack"].intValue,
                                            health: carte["health"].intValue,
                                            manaCost: carte["manaCost"].intValue)
                        )
                    }
                }
                //print(json)
                //print("working")
                seal.fulfill(cartes)
            }
        }
    }
    
    // Chasseur de démon
    static func getCartsChasseurDeDemon() -> Promise<[Carte]> {
        
        var cartes: [Carte] = []
        
        
        
        
        return Promise { seal in
            AF.request("https://eu.api.blizzard.com/hearthstone/cards?locale=fr_FR&class=demonhunter&pageSize=0&access_token=EUKxZ3cEM9rI0tw3HcLuF5YNE5dswJaoBe").response {response in
                let json = JSON(response.data)
                if let carteJSON = json.dictionaryValue["cards"]?.arrayValue {
                    for carte in carteJSON{
                        cartes.append(Carte(name: carte["name"].stringValue,
                                            id: carte["id"].intValue,
                                            image: carte["image"].stringValue,
                                            attack: carte["attack"].intValue,
                                            health: carte["health"].intValue,
                                            manaCost: carte["manaCost"].intValue)
                        )
                    }
                }
                //print(json)
                //print("working")
                seal.fulfill(cartes)
            }
        }
    }
    // Guerrier
    static func getCartsGuerrier() -> Promise<[Carte]> {
        
        var cartes: [Carte] = []
        
        
        
        
        return Promise { seal in
            AF.request("https://eu.api.blizzard.com/hearthstone/cards?locale=fr_FR&class=warrior&pageSize=0&access_token=EUKxZ3cEM9rI0tw3HcLuF5YNE5dswJaoBe").response {response in
                let json = JSON(response.data)
                if let carteJSON = json.dictionaryValue["cards"]?.arrayValue {
                    for carte in carteJSON{
                        cartes.append(Carte(name: carte["name"].stringValue,
                                            id: carte["id"].intValue,
                                            image: carte["image"].stringValue,
                                            attack: carte["attack"].intValue,
                                            health: carte["health"].intValue,
                                            manaCost: carte["manaCost"].intValue)
                        )
                    }
                }
                //print(json)
                //print("working")
                seal.fulfill(cartes)
            }
        }
    }
    // neutre
    static func getCartsNeutre() -> Promise<[Carte]> {
        
        var cartes: [Carte] = []
        
        
        
        
        return Promise { seal in
            AF.request("https://eu.api.blizzard.com/hearthstone/cards?locale=fr_FR&class=neutral&pageSize=0&access_token=EUKxZ3cEM9rI0tw3HcLuF5YNE5dswJaoBe").response {response in
                let json = JSON(response.data)
                if let carteJSON = json.dictionaryValue["cards"]?.arrayValue {
                    for carte in carteJSON{
                        cartes.append(Carte(name: carte["name"].stringValue,
                                            id: carte["id"].intValue,
                                            image: carte["image"].stringValue,
                                            attack: carte["attack"].intValue,
                                            health: carte["health"].intValue,
                                            manaCost: carte["manaCost"].intValue)
                        )
                    }
                }
                //print(json)
                //print("working")
                seal.fulfill(cartes)
            }
        }
    }
    
    // Bete
    static func getCartsBete() -> Promise<[Carte]> {
        
        var cartes: [Carte] = []
        
        
        
        
        return Promise { seal in
            AF.request("https://eu.api.blizzard.com/hearthstone/cards?locale=fr_FR&minionType=beast&pageSize=0&access_token=EUKxZ3cEM9rI0tw3HcLuF5YNE5dswJaoBe").response {response in
                let json = JSON(response.data)
                if let carteJSON = json.dictionaryValue["cards"]?.arrayValue {
                    for carte in carteJSON{
                        cartes.append(Carte(name: carte["name"].stringValue,
                                            id: carte["id"].intValue,
                                            image: carte["image"].stringValue,
                                            attack: carte["attack"].intValue,
                                            health: carte["health"].intValue,
                                            manaCost: carte["manaCost"].intValue)
                        )
                    }
                }
                //print(json)
                //print("working")
                seal.fulfill(cartes)
            }
        }
    }
    
    // demon
    static func getCartsDemon() -> Promise<[Carte]> {
        
        var cartes: [Carte] = []
        
        
        
        
        return Promise { seal in
            AF.request("https://eu.api.blizzard.com/hearthstone/cards?locale=fr_FR&minionType=demon&pageSize=0&access_token=EUKxZ3cEM9rI0tw3HcLuF5YNE5dswJaoBe").response {response in
                let json = JSON(response.data)
                if let carteJSON = json.dictionaryValue["cards"]?.arrayValue {
                    for carte in carteJSON{
                        cartes.append(Carte(name: carte["name"].stringValue,
                                            id: carte["id"].intValue,
                                            image: carte["image"].stringValue,
                                            attack: carte["attack"].intValue,
                                            health: carte["health"].intValue,
                                            manaCost: carte["manaCost"].intValue)
                        )
                    }
                }
                //print(json)
                //print("working")
                seal.fulfill(cartes)
            }
        }
    }
    
    // Dragon
    static func getCartsDragon() -> Promise<[Carte]> {
        
        var cartes: [Carte] = []
        
        
        
        
        return Promise { seal in
            AF.request("https://eu.api.blizzard.com/hearthstone/cards?locale=fr_FR&minionType=dragon&pageSize=0&access_token=EUKxZ3cEM9rI0tw3HcLuF5YNE5dswJaoBe").response {response in
                let json = JSON(response.data)
                if let carteJSON = json.dictionaryValue["cards"]?.arrayValue {
                    for carte in carteJSON{
                        cartes.append(Carte(name: carte["name"].stringValue,
                                            id: carte["id"].intValue,
                                            image: carte["image"].stringValue,
                                            attack: carte["attack"].intValue,
                                            health: carte["health"].intValue,
                                            manaCost: carte["manaCost"].intValue)
                        )
                    }
                }
                //print(json)
                //print("working")
                seal.fulfill(cartes)
            }
        }
    }
    
    // Elemental
    static func getCartsElemental() -> Promise<[Carte]> {
        
        var cartes: [Carte] = []
        
        
        
        
        return Promise { seal in
            AF.request("https://eu.api.blizzard.com/hearthstone/cards?locale=fr_FR&minionType=elemental&pageSize=0&access_token=EUKxZ3cEM9rI0tw3HcLuF5YNE5dswJaoBe").response {response in
                let json = JSON(response.data)
                if let carteJSON = json.dictionaryValue["cards"]?.arrayValue {
                    for carte in carteJSON{
                        cartes.append(Carte(name: carte["name"].stringValue,
                                            id: carte["id"].intValue,
                                            image: carte["image"].stringValue,
                                            attack: carte["attack"].intValue,
                                            health: carte["health"].intValue,
                                            manaCost: carte["manaCost"].intValue)
                        )
                    }
                }
                //print(json)
                //print("working")
                seal.fulfill(cartes)
            }
        }
    }
    
    // Meca
    static func getCartsMeca() -> Promise<[Carte]> {
        
        var cartes: [Carte] = []
        
        
        
        
        return Promise { seal in
            AF.request("https://eu.api.blizzard.com/hearthstone/cards?locale=fr_FR&minionType=mech&pageSize=0&access_token=EUKxZ3cEM9rI0tw3HcLuF5YNE5dswJaoBe").response {response in
                let json = JSON(response.data)
                if let carteJSON = json.dictionaryValue["cards"]?.arrayValue {
                    for carte in carteJSON{
                        cartes.append(Carte(name: carte["name"].stringValue,
                                            id: carte["id"].intValue,
                                            image: carte["image"].stringValue,
                                            attack: carte["attack"].intValue,
                                            health: carte["health"].intValue,
                                            manaCost: carte["manaCost"].intValue)
                        )
                    }
                }
                //print(json)
                //print("working")
                seal.fulfill(cartes)
            }
        }
    }
    
    // Murloc
    static func getCartsMurloc() -> Promise<[Carte]> {
        
        var cartes: [Carte] = []
        
        
        
        
        return Promise { seal in
            AF.request("https://eu.api.blizzard.com/hearthstone/cards?locale=fr_FR&minionType=murloc&pageSize=0&access_token=EUKxZ3cEM9rI0tw3HcLuF5YNE5dswJaoBe").response {response in
                let json = JSON(response.data)
                if let carteJSON = json.dictionaryValue["cards"]?.arrayValue {
                    for carte in carteJSON{
                        cartes.append(Carte(name: carte["name"].stringValue,
                                            id: carte["id"].intValue,
                                            image: carte["image"].stringValue,
                                            attack: carte["attack"].intValue,
                                            health: carte["health"].intValue,
                                            manaCost: carte["manaCost"].intValue)
                        )
                    }
                }
                //print(json)
                //print("working")
                seal.fulfill(cartes)
            }
        }
    }
    
    // Naga
    static func getCartsNaga() -> Promise<[Carte]> {
        
        var cartes: [Carte] = []
        
        
        
        
        return Promise { seal in
            AF.request("https://eu.api.blizzard.com/hearthstone/cards?locale=fr_FR&minionType=naga&pageSize=0&access_token=EUKxZ3cEM9rI0tw3HcLuF5YNE5dswJaoBe").response {response in
                let json = JSON(response.data)
                if let carteJSON = json.dictionaryValue["cards"]?.arrayValue {
                    for carte in carteJSON{
                        cartes.append(Carte(name: carte["name"].stringValue,
                                            id: carte["id"].intValue,
                                            image: carte["image"].stringValue,
                                            attack: carte["attack"].intValue,
                                            health: carte["health"].intValue,
                                            manaCost: carte["manaCost"].intValue)
                        )
                    }
                }
                //print(json)
                //print("working")
                seal.fulfill(cartes)
            }
        }
    }
    
    // Pirate
    static func getCartsPirate() -> Promise<[Carte]> {
        
        var cartes: [Carte] = []
        
        
        
        
        return Promise { seal in
            AF.request("https://eu.api.blizzard.com/hearthstone/cards?locale=fr_FR&minionType=pirate&pageSize=0&access_token=EUKxZ3cEM9rI0tw3HcLuF5YNE5dswJaoBe").response {response in
                let json = JSON(response.data)
                if let carteJSON = json.dictionaryValue["cards"]?.arrayValue {
                    for carte in carteJSON{
                        cartes.append(Carte(name: carte["name"].stringValue,
                                            id: carte["id"].intValue,
                                            image: carte["image"].stringValue,
                                            attack: carte["attack"].intValue,
                                            health: carte["health"].intValue,
                                            manaCost: carte["manaCost"].intValue)
                        )
                    }
                }
                //print(json)
                //print("working")
                seal.fulfill(cartes)
            }
        }
    }
    // Huran
    static func getCartsHuran() -> Promise<[Carte]> {
        
        var cartes: [Carte] = []
        
        
        
        
        return Promise { seal in
            AF.request("https://eu.api.blizzard.com/hearthstone/cards?locale=fr_FR&minionType=quilboar&pageSize=0&access_token=EUKxZ3cEM9rI0tw3HcLuF5YNE5dswJaoBe").response {response in
                let json = JSON(response.data)
                if let carteJSON = json.dictionaryValue["cards"]?.arrayValue {
                    for carte in carteJSON{
                        cartes.append(Carte(name: carte["name"].stringValue,
                                            id: carte["id"].intValue,
                                            image: carte["image"].stringValue,
                                            attack: carte["attack"].intValue,
                                            health: carte["health"].intValue,
                                            manaCost: carte["manaCost"].intValue)
                        )
                    }
                }
                //print(json)
                //print("working")
                seal.fulfill(cartes)
            }
        }
    }
    // Totem
    static func getCartsTotem() -> Promise<[Carte]> {
        
        var cartes: [Carte] = []
        
        
        
        
        return Promise { seal in
            AF.request("https://eu.api.blizzard.com/hearthstone/cards?locale=fr_FR&minionType=totem&pageSize=0&access_token=EUKxZ3cEM9rI0tw3HcLuF5YNE5dswJaoBe").response {response in
                let json = JSON(response.data)
                if let carteJSON = json.dictionaryValue["cards"]?.arrayValue {
                    for carte in carteJSON{
                        cartes.append(Carte(name: carte["name"].stringValue,
                                            id: carte["id"].intValue,
                                            image: carte["image"].stringValue,
                                            attack: carte["attack"].intValue,
                                            health: carte["health"].intValue,
                                            manaCost: carte["manaCost"].intValue)
                        )
                    }
                }
                //print(json)
                //print("working")
                seal.fulfill(cartes)
            }
        }
    }
    
}
