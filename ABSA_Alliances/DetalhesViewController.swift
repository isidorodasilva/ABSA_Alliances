//
//  DetalhesViewController.swift
//  ABSA_Alliances
//
//  Created by Isidoro Pedro Da Silva Junior on 5/22/19.
//  Copyright © 2019 Isidoro Pedro Da Silva Junior. All rights reserved.
//

import UIKit

class DetalhesViewController: UIViewController {
    
    
    //MARK: Variables
    
    var titulodetalheProduto = ""
    var ratingdetalheProduto = ""
    var telefonedetalheProduto = ""
    var emaildetalheProduto = ""
    var locationdetalheProduto = ""
    var descriptiondetalheProduto = ""
    var linkdetalhesProducto = ""
    
    @IBOutlet weak var titulodetalhe: UILabel!
    @IBOutlet weak var ratingdetalhe: UILabel!
    @IBOutlet weak var telefonedetalhe: UILabel!
    @IBOutlet weak var emaildetalhe: UILabel!
    @IBOutlet weak var locationdetalhe: UILabel!
    @IBOutlet weak var descriptiondetalhe: UITextView!
    @IBOutlet weak var linkdetalhes: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        linkdetalhes.text = linkdetalhesProducto
        titulodetalhe.text = titulodetalheProduto
        ratingdetalhe.text = ratingdetalheProduto
        telefonedetalhe.text = telefonedetalheProduto
        emaildetalhe.text = emaildetalheProduto
        locationdetalhe.text = locationdetalheProduto
        descriptiondetalhe.text = descriptiondetalheProduto
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
