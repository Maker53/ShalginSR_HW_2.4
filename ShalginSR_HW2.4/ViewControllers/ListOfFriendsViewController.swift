//
//  ListOfFriendsViewController.swift
//  ShalginSR_HW2.4
//
//  Created by Станислав on 30.10.2021.
//

import UIKit

class ListOfFriendsViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var friendsList: UILabel!
    @IBOutlet var titleOfFriendsList: UILabel!
    
    // MARK: - Public Properties
    var nameList: UserProfileInfo!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        friendsList.text = nameList.friendsList
        titleOfFriendsList.text = "Friends (" + String(nameList.friendsCount) + ")"
    }
}
