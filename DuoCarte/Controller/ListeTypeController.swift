//
//  ListeTypeController.swift
//  DuoCarte
//
//  Created by Maxime Blaess on 07/10/2022.
//

import UIKit
import Alamofire
import SwiftyJSON
import Foundation

class ListeTypeController: UITableViewController {
    
    
    var cartes: [Carte] = []
    var Typemonstre: Typesmonstres = .bete
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Liste de Carte"
        
        
        refreshCarteList()
    }
    
    
    
    func refreshCarteList() {
        switch Typemonstre {
        case .bete:
            
            self.cartes.removeAll()
            HearststoneApi.getCartsBete().done { cartesResponse in
                self.cartes = cartesResponse
                self.tableView.reloadData()
            }
        case .demon:
            
            self.cartes.removeAll()
            HearststoneApi.getCartsDemon().done { cartesResponse in
                self.cartes = cartesResponse
                self.tableView.reloadData()
            }
        case .dragon:
            self.cartes.removeAll()
            HearststoneApi.getCartsDragon().done { cartesResponse in
                self.cartes = cartesResponse
                self.tableView.reloadData()
            }
        case .elemental:
            
            self.cartes.removeAll()
            HearststoneApi.getCartsElemental().done { cartesResponse in
                self.cartes = cartesResponse
                self.tableView.reloadData()
            }
        case .meca:
            
            self.cartes.removeAll()
            HearststoneApi.getCartsMeca().done { cartesResponse in
                self.cartes = cartesResponse
                self.tableView.reloadData()
            }
        case .murloc:
            
            self.cartes.removeAll()
            HearststoneApi.getCartsMurloc().done { cartesResponse in
                self.cartes = cartesResponse
                self.tableView.reloadData()
            }
        case .naga:
            
            self.cartes.removeAll()
            HearststoneApi.getCartsNaga().done { cartesResponse in
                self.cartes = cartesResponse
                self.tableView.reloadData()
            }
        case .pirate:
            
            self.cartes.removeAll()
            HearststoneApi.getCartsPirate().done { cartesResponse in
                self.cartes = cartesResponse
                self.tableView.reloadData()
            }
        case .huran:
            
            self.cartes.removeAll()
            HearststoneApi.getCartsHuran().done { cartesResponse in
                self.cartes = cartesResponse
                self.tableView.reloadData()
            }
        case .totem:
            
            self.cartes.removeAll()
            HearststoneApi.getCartsTotem().done { cartesResponse in
                self.cartes = cartesResponse
                self.tableView.reloadData()
            }
        default:
            
            self.cartes.removeAll()
            HearststoneApi.getCarts().done { cartesResponse in
                self.cartes = cartesResponse
                self.tableView.reloadData()
            }
        }
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "CartesCell")
        
        cell.textLabel?.text = self.cartes[indexPath.row].name
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cartes.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "toCarteTypeDescription", sender: cartes[indexPath.row])
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCarteTypeDescription" {
            
            let carte = sender as? Carte
            
            if let viewControllerDestination = segue.destination as? CarteDesciptionTypeController {
                viewControllerDestination.carte = carte
            }
            
        }
    }
    
    
}

enum Typesmonstres{
    case bete
    case demon
    case dragon
    case elemental
    case meca
    case murloc
    case naga
    case pirate
    case huran
    case totem
}
