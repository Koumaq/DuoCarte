//
//  ListeClassController.swift
//  DuoCarte
//
//  Created by Maxime Blaess on 06/10/2022.
//

import UIKit
import Alamofire
import SwiftyJSON
import Foundation

class ListeClassController: UITableViewController {
    
    
    var cartes: [Carte] = []
    var classe: Classes = .voler

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Liste de Cartes"
        
        
        refreshCarteList()
    }
    

    
    func refreshCarteList() {
        switch classe {
        case .chaman:
            
            self.cartes.removeAll()
            HearststoneApi.getCartsChaman().done { cartesResponse in
                self.cartes = cartesResponse
                self.tableView.reloadData()
            }
        case .voler:
            
            self.cartes.removeAll()
            HearststoneApi.getCartsVoler().done { cartesResponse in
                self.cartes = cartesResponse
                self.tableView.reloadData()
            }
        case .paladin:
            
            self.cartes.removeAll()
            HearststoneApi.getCartsPaladin().done { cartesResponse in
                self.cartes = cartesResponse
                self.tableView.reloadData()
            }
        case .chasseur:
            
            self.cartes.removeAll()
            HearststoneApi.getCartsChasseur().done { cartesResponse in
                self.cartes = cartesResponse
                self.tableView.reloadData()
            }
        case .mage:
            
            self.cartes.removeAll()
            HearststoneApi.getCartsMage().done { cartesResponse in
                self.cartes = cartesResponse
                self.tableView.reloadData()
            }
        case .druide:
            
            self.cartes.removeAll()
            HearststoneApi.getCartsDruide().done { cartesResponse in
                self.cartes = cartesResponse
                self.tableView.reloadData()
            }
        case .pretre:
            
            self.cartes.removeAll()
            HearststoneApi.getCartsPretre().done { cartesResponse in
                self.cartes = cartesResponse
                self.tableView.reloadData()
            }
        case .demoniste:
            
            self.cartes.removeAll()
            HearststoneApi.getCartsDemoniste().done { cartesResponse in
                self.cartes = cartesResponse
                self.tableView.reloadData()
            }
        case .chasseurDeDemon:
            
            self.cartes.removeAll()
            HearststoneApi.getCartsChasseurDeDemon().done { cartesResponse in
                self.cartes = cartesResponse
                self.tableView.reloadData()
            }
        case .guerrier:
            
            self.cartes.removeAll()
            HearststoneApi.getCartsGuerrier().done { cartesResponse in
                self.cartes = cartesResponse
                self.tableView.reloadData()
            }
        case .neutre:
            
            self.cartes.removeAll()
            HearststoneApi.getCartsNeutre().done { cartesResponse in
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
        self.performSegue(withIdentifier: "toCarteClassDescription", sender: cartes[indexPath.row])
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCarteClassDescription" {
            
            let carte = sender as? Carte
            
            if let viewControllerDestination = segue.destination as? CarteDesciptionClassController {
                viewControllerDestination.carte = carte
            }
            
        }
    }
    
    
}

enum Classes{
    case chaman
    case voler
    case paladin
    case chasseur
    case mage
    case druide
    case pretre
    case demoniste
    case chasseurDeDemon
    case guerrier
    case neutre
}
