//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Вадим Ардуанов on 21.07.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var user = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //welcomeLabel.text = "Welcome, \(user)"
    }
    
    
    @IBAction func LogOutButton() {
        //dismiss(animated: true)
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
