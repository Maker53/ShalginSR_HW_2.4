//
//  ListOfFriendsViewController.swift
//  ShalginSR_HW2.4
//
//  Created by Станислав on 30.10.2021.
//

import UIKit

class ListOfFriendsViewController: UIViewController {
    
    @IBOutlet var friendsListLabel: UILabel!
    @IBOutlet var titleOfFriendsList: UILabel!
    
    private var nameList: String = FriendsList.getFriendsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        friendsListLabel.text = nameList
        titleOfFriendsList.text = "Friends (" + FriendsList.getNumberOfFriends() + ")"
    }
}
