//
//  WelcomeViewController.swift
//  SulimMA.HW2.3
//
//  Created by михаил сулим on 30.03.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeText: UITextField!
    var welcome: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeText.text = "Welcome, \(welcome!)"
    }
    

   

}
