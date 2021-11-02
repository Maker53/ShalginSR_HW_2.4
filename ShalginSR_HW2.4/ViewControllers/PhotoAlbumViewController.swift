//
//  PhotoAlbumViewController.swift
//  ShalginSR_HW2.4
//
//  Created by Станислав on 31.10.2021.
//

import UIKit

class PhotoAlbumViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var userPhoto2: UIImageView!
    @IBOutlet var userPhoto3: UIImageView!
    
    // MARK: - Public Properties
    var imageName: UserProfileInfo!
    
    // MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        userPhoto2.image = UIImage(named: imageName.photoAlbum[0])
        userPhoto3.image = UIImage(named: imageName.photoAlbum[1])
    }
}
