//
//  PhotoAlbumViewController.swift
//  ShalginSR_HW2.4
//
//  Created by Станислав on 31.10.2021.
//

import UIKit

class PhotoAlbumViewController: UIViewController {

    @IBOutlet var userPhoto2: UIImageView!
    @IBOutlet var userPhoto3: UIImageView!
    
    var imageName2 = ""
    var imageName3 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userPhoto2.image = UIImage(named: imageName2)
        userPhoto3.image = UIImage(named: imageName3)
    }
}
