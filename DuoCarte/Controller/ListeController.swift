//
//  ListeController.swift
//  DuoCarte
//
//  Created by Maxime Blaess on 01/10/2022.
//

import UIKit
import Alamofire
import SwiftyJSON
import Foundation

class ListeController: UITableViewController {
    
    
    var cartes: [Carte] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Liste de Cartes"
        refreshCarteList()
    }
    
    func refreshCarteList() {
        self.cartes.removeAll()
        HearststoneApi.getCarts().done { cartesResponse in
            self.cartes = cartesResponse
            self.tableView.reloadData()
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
        self.performSegue(withIdentifier: "toCarteDescription", sender: cartes[indexPath.row])
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCarteDescription" {
            
            let carte = sender as? Carte
            
            if let viewControllerDestination = segue.destination as? CarteDesciptionController {
                viewControllerDestination.carte = carte
            }
            
        }
    }
    
    
}
