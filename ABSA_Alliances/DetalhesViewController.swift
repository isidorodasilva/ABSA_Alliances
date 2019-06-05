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
    var photodetalheProduto = ""
    
    
    
    @IBOutlet weak var photodetalhe: UIImageView!
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
        
        if let url = NSURL(string: photodetalheProduto) {
            if let data = NSData (contentsOf: url as URL) {
                photodetalhe.contentMode = UIView.ContentMode.scaleAspectFit
                photodetalhe.image = UIImage(data: data as Data)
            }
        }
        // Do any additional setup after loading the view.
    }
}
