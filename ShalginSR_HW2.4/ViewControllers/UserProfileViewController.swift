//
//  UserProfileViewController.swift
//  ShalginSR_HW2.4
//
//  Created by Станислав on 30.10.2021.
//

import UIKit

class UserProfileViewController: UIViewController {

    @IBOutlet var userPhoto: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    
    private let userData: UserData = UserData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userPhoto.image = UIImage(named: userData.imageName)
        nameLabel.text = "Name: " + userData.name
        surnameLabel.text = "Surname: " + userData.surname
        ageLabel.text = "Age: " + userData.age
        navigationItem.title?.append(" " + userData.login)
    }
}
