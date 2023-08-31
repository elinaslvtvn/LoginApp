//
//  UserInfoViewController.swift
//  LoginApp
//
//  Created by Вадим Ардуанов on 31.07.2023.
//

import UIKit

final class UserInfoViewController: UIViewController {
    
    @IBOutlet var avatarImage: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var patronymic: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    
    var user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.fullName
        avatarImage.image = UIImage(named: user.person.photo)
        nameLabel.text = "\(user.person.name)"
        surnameLabel.text = "\(user.person.surname)"
        patronymic.text = "\(user.person.patronymic)"
        ageLabel.text = "\(user.person.age)"
        cityLabel.text = "\(user.person.city)"
    }
}
