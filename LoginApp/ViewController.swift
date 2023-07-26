//
//  ViewController.swift
//  LoginApp
//
//  Created by Вадим Ардуанов on 20.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var UserLabel: UITextField!
    @IBOutlet var passwordLabel: UITextField!
    
    private let user = "User"
    private let password = "Password"
    
    
    //    override func viewDidLoad() {
    //        super.viewDidLoad()
    //        // Do any additional setup after loading the view.
    //    }
    //
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.user = user
    }
    
    @IBAction func forgotUserPassword(_ sender: UIButton) {
        if sender.tag == 0 {
            showAlert(title: "Oops!", message: "Your login is \(user) 😉")
        } else {
            showAlert(title: "Oops!", message: "Your password is \(password) 😉")
        }
    }
    
    @IBAction func validLogin() {
        guard UserLabel.text == user, passwordLabel.text == password
        else {
            showAlert(title: "Oops!", message: "Invalid login or password")
            return
        }
    }
    
   
    
    private func showAlert(title: String, message: String) {
        let showAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let actionOk = UIAlertAction(title: "Ok", style: .default)
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel)
        showAlertController.addAction(actionOk)
        showAlertController.addAction(actionCancel)
        present(showAlertController, animated: true)
    }
}
