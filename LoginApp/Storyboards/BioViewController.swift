//
//  BioViewController.swift
//  LoginApp
//
//  Created by Вадим Ардуанов on 31.08.2023.
//

import UIKit

final class BioViewController: UIViewController {

    @IBOutlet var textaboutLabel: UILabel!
    
    var user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textaboutLabel.text = "\(user.person.bio)"
    }
}
