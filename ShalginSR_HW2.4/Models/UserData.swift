//
//  UserData.swift
//  ShalginSR_HW2.4
//
//  Created by Станислав on 30.10.2021.
//

import Foundation
import UIKit

struct UserData {
    let name = "Torax"
    let surname = "Shalgin"
    let age = "3 years"
    
    let login = "ToraxTheDog"
    let password = "Bones"
    
    let imageName2 = "UserPhoto2"
    let imageName3 = "UserPhoto3"
    let imageName1 = "UserPhoto"
}

struct FriendsList {
    var friendsList: [FriendsName]
}

enum FriendsName: String, CaseIterable {
    case dog = "Dog 🐶"
    case cat = "Cat 🐱"
    case mouse = "Mouse 🐭"
    case bear = "Bear 🐻"
}

extension FriendsList {
    static func getFriendsList() -> String {
        var nameList: String
        var nameArray: [String] = []
        for name in FriendsName.allCases {
            nameArray.append(name.rawValue)
        }
        nameList = nameArray.joined(separator: "\n")
        
        return nameList
    }
    
    static func getNumberOfFriends() -> String {
        var nameArray: [String] = []
        for name in FriendsName.allCases {
            nameArray.append(name.rawValue)
        }
        return String(nameArray.count)
    }
}
