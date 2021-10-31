//
//  ListOfFriendsViewController.swift
//  ShalginSR_HW2.4
//
//  Created by Станислав on 30.10.2021.
//

import UIKit

class ListOfFriendsViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var friendsListLabel: UILabel!
    @IBOutlet var titleOfFriendsList: UILabel!
    
    // MARK: - Private Properties
    private var nameList: String = FriendsList.getFriendsList()
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        friendsListLabel.text = nameList
        titleOfFriendsList.text = "Friends (" + FriendsList.getNumberOfFriends() + ")"
    }
}
