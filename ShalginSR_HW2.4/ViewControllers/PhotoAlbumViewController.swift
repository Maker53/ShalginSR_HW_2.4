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
    var imageName2 = ""
    var imageName3 = ""
    
    // MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        userPhoto2.image = UIImage(named: imageName2)
        userPhoto3.image = UIImage(named: imageName3)
    }
}
