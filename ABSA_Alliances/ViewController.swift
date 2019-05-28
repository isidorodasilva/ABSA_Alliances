//
//  ViewController.swift
//  ABSA_Alliances
//
//  Created by Isidoro Pedro Da Silva Junior on 5/22/19.
//  Copyright © 2019 Isidoro Pedro Da Silva Junior. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

var DatabaseHandle : DatabaseHandle!

class ViewController: UIViewController, UICollectionViewDelegate {
    
    @IBOutlet weak var scrollView: UIPageControl!
    @IBOutlet weak var onboardingContainer: UIView!
    @IBOutlet weak var skipBtn: UIButton!
    
    
    @IBAction func skipOnboarding(_ sender: UIButton) {
        sender.removeFromSuperview()
        onboardingContainer.removeFromSuperview()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //End Action button to send code
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
}


