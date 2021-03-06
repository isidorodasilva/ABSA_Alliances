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

    
    typealias ItemInfo = (Title: String, Description: String, email: String, Linkdetalhes: String, telefone: String, Coordenates: String, Rating: String, photo: String)
    
    fileprivate var items: [ItemInfo]! = [("Titulo","Description","email","Linkdetalhes","telefone","Coordenates","Rating","photo")]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch clickedButton {
        case 1:
            items.removeAll()
            
            
            (UIApplication.shared.delegate as! AppDelegate).fireBaseRef.observe(.value, with: { snapshot in
                let dictRoot = snapshot.value as? [String : AnyObject] ?? [:]
                let dictAliances = dictRoot["Aliances"] as? [String: AnyObject] ?? [:]
                print(dictAliances.count)
                //new strategy for image
                for key in Array(dictAliances.keys) {
                    let alianceDic = dictAliances[key]
                    self.items.append(( alianceDic!["Title"] as! String, alianceDic!["Description"] as! String, alianceDic!["email"] as! String, alianceDic!["Linkdetalhes"] as! String, alianceDic!["telefone"] as! String, alianceDic!["Coordenates"] as! String, alianceDic!["Rating"] as! String, alianceDic!["photo"] as! String))
                    self.tableView.reloadData()
                    print("**** \(self.items)")
                }
                print(dictAliances)
            })
            self.tableView?.reloadData()
            
        case 2:
            items.removeAll()
            (UIApplication.shared.delegate as! AppDelegate).fireBaseRef.observe(.value, with: { snapshot in
                let dictRoot = snapshot.value as? [String : AnyObject] ?? [:]
                let dictAliances = dictRoot["Eventos"] as? [String: AnyObject] ?? [:]
                for key in Array(dictAliances.keys) {
                    let alianceDic = dictAliances[key]
                    self.items.append(( alianceDic!["Title"] as! String, alianceDic!["Description"] as! String, alianceDic!["email"] as! String,  alianceDic!["Linkdetalhes"] as! String, alianceDic!["telefone"] as! String, alianceDic!["Coordenates"] as! String, alianceDic!["Rating"] as! String, alianceDic!["photo"] as! String))

                    self.tableView?.reloadData()
                    print("**** \(self.items)")
                }
                print(dictAliances)
            })
            
            
        case 3:
            items.removeAll()
            (UIApplication.shared.delegate as! AppDelegate).fireBaseRef.observe(.value, with: { snapshot in
                let dictRoot = snapshot.value as? [String : AnyObject] ?? [:]
                let dictAliances = dictRoot["Newsletter"] as? [String: AnyObject] ?? [:]
                for key in Array(dictAliances.keys) {
                    let alianceDic = dictAliances[key]
                    self.items.append(( alianceDic!["Title"] as! String, alianceDic!["Description"] as! String, alianceDic!["email"] as! String,  alianceDic!["Linkdetalhes"] as! String, alianceDic!["telefone"] as! String, alianceDic!["Coordenates"] as! String,  alianceDic!["Rating"] as! String, alianceDic!["photo"] as! String))

                    self.tableView?.reloadData()
                    print("**** \(self.items)")
                }
                print(dictAliances)
            })
        default:
            break
        }
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
        
        cell.Title.text = item.Title
        cell.Description.text = item.Description
        cell.Rating.text = item.email
    


        if let url = NSURL(string: item.photo) {
        if let data = NSData (contentsOf: url as URL) {
            cell.photo.contentMode = UIView.ContentMode.scaleAspectFit
            cell.photo.image = UIImage(data: data as Data)
        }
        }

        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.escolhido = items[indexPath.row]
        performSegue(withIdentifier: "exemplo", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "exemplo"){
            
            let vc = segue.destination as! DetalhesViewController
            
            
            vc.titulodetalheProduto = self.escolhido.Title
            vc.descriptiondetalheProduto = self.escolhido.Description
            vc.emaildetalheProduto = self.escolhido.email
            vc.linkdetalhesProducto = self.escolhido.Linkdetalhes
            vc.telefonedetalheProduto = self.escolhido.telefone
            vc.locationdetalheProduto = self.escolhido.Coordenates
            vc.ratingdetalheProduto = self.escolhido.Rating
            vc.photodetalheProduto = self.escolhido.photo

        }
    }
}
