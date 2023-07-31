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
    
    private let user = "U"
    private let password = "P"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.user = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
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
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        UserLabel.text = ""
        passwordLabel.text = ""
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
