//
//  WelcomeViewController.swift
//  ShalginSR_HW2.3
//
//  Created by Станислав on 26.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var helloLabel: UILabel!
    @IBOutlet var emodjiLablel: UILabel!
    
    // MARK: - Public Properties
    var userName: User!
    
    // MARK: - Override Properties
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emodjiLablel.text = "\u{1F44B}"
        helloLabel.text = "Welcome, " + userName.person.name + "!"
    }
    
    // MARK: - IB Actions
    @IBAction func logOutButton() {
        dismiss(animated: true)
    }
}
