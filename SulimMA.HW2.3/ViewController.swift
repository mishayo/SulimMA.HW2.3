//
//  ViewController.swift
//  SulimMA.HW2.3
//
//  Created by михаил сулим on 30.03.2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameText.delegate = self
        userNameText.delegate = self
        
    }
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        passwordText.becomeFirstResponder()
    }
    
    @IBAction func forgotUaerNameAlert() {
        showAlertForgotUserData(with: "Oops!", and: "Your User Name is User")
        return
    }
    @IBAction func forgotPasswordAlert() {
        showAlertForgotUserData(with: "Oops!", and: "Your Password is Password")
        return
    }
    

}
extension ViewController {
    private func showAlertForgotUserData(with title: String, and messege: String) {
        let alert = UIAlertController(title: title, message: messege, preferredStyle: .alert)
        present(alert, animated: true)
        let defaultAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(defaultAction)
    }
}
