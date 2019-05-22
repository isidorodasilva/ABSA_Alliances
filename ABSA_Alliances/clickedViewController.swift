//
//  File.swift
//  ABSA_Alliances
//
//  Created by Isidoro Pedro Da Silva Junior on 5/22/19.
//  Copyright © 2019 Isidoro Pedro Da Silva Junior. All rights reserved.
//
class clickedViewController: UIViewController {
    
    
    var clickedButton: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func button1(_ sender: Any) {
        clickedButton = 1
        performSegue(withIdentifier: "goTo", sender: nil)
    }
    
    @IBAction func button2(_ sender: Any) {
        clickedButton = 2
        performSegue(withIdentifier: "goTo", sender: nil)
    }
    
    @IBAction func button3(_ sender: Any) {
        clickedButton = 3
        performSegue(withIdentifier: "goTo", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goTo" {
            let demoVC = segue.destination as! DesignTableViewController
            demoVC.clickedButton = clickedButton
        }
    }
    
    
}
