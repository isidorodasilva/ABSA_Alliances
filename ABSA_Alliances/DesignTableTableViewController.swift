//
//  DesignTableTableViewController.swift
//  ABSA_Alliances
//
//  Created by Isidoro Pedro Da Silva Junior on 5/22/19.
//  Copyright © 2019 Isidoro Pedro Da Silva Junior. All rights reserved.
//

import UIKit

class DesignTableTableViewController: UITableViewController {

    var escolhido: ItemInfo!
    var clickedButton: Int!
    var descricao: String!
    
    
    
    typealias ItemInfo = (Titulo: String, Description: String, Rating: String, photo: String, email: String, location: String, telefone: String, Linkdetalhes: String)
    
    fileprivate var items: [ItemInfo]! = [( "Titulo","Description","Rating","photo","email","location","telefone", "Linkdetalhes")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "hello", for: indexPath) as! itemTableViewCell
        
        let item = self.items[indexPath.row]
        cell.Title.text = item.Titulo
        cell.Description.text = item.Description
        cell.Rating.text = item.Rating
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "exemplo", sender: nil)
        self.escolhido = items[indexPath.row]
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "exemplo"){
            let vc = segue.destination as! DetalhesViewController
            
            vc.descriptiondetalheProduto = self.escolhido.Description
            vc.titulodetalheProduto = self.escolhido.Titulo
            vc.ratingdetalheProduto = self.escolhido.Rating
            vc.telefonedetalheProduto = self.escolhido.telefone
            vc.emaildetalheProduto = self.escolhido.email
            vc.locationdetalheProduto = self.escolhido.location
            vc.linkdetalhesProducto = self.escolhido.Linkdetalhes
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
