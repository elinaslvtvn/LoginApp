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
    
    private let primaryColor = UIColor(
        red: 210/255,
        green: 109/255,
        blue: 128/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        welcomeLabel.text = "Welcome, \(user) 👋!"
    }
    
    @IBAction func logOutBtn(_ sender: UIButton) {
        dismiss(animated: true)
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
