//
//  UserProfileViewController.swift
//  ShalginSR_HW2.4
//
//  Created by Станислав on 30.10.2021.
//

import UIKit

class UserProfileViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var userPhoto: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    
    // MARK: - Public Properties
    var user: User!
    var userProfileInfo: UserProfileInfo!
    
    // MARK: - Override Properties
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userPhoto.image = UIImage(named: user.person.image)
        
        nameLabel.text = "Name: " + user.person.name
        surnameLabel.text = "Surname: " + user.person.surname
        ageLabel.text = "Age: " + String(user.person.age)
        
        navigationItem.title?.append(" " + user.login)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let photoAlbumViewController = segue.destination as? PhotoAlbumViewController else { return }
        photoAlbumViewController.imageName = userProfileInfo
        }
}
