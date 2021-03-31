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
    
    @IBOutlet var logInButton: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameText.delegate = self
        userNameText.delegate = self
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard  let welcomeVC = segue.destination as? WelcomeViewController else { return }
        guard userNameText.text == "User" else {
            showAlertForgotUserData(with: "Oops!", and: "User Name Wrong")
            return
        }
        guard passwordText.text == "Password" else {
            showAlertForgotUserData(with: "Oops!", and: "Wrong Password!")
            return
        }
        welcomeVC.welcome = userNameText.text
    }
    
    @IBAction func forgotUaerNameAlert() {
        showAlertForgotUserData(with: "Oops!", and: "Your User Name is User")
        return
    }
    @IBAction func forgotPasswordAlert() {
        showAlertForgotUserData(with: "Oops!", and: "Your Password is Password")
        return
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        passwordText.becomeFirstResponder()
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
