//
//  UserData.swift
//  ShalginSR_HW2.4
//
//  Created by Станислав on 30.10.2021.
//

import Foundation
import UIKit

// MARK: - User
struct User {
    // User Data properties
    var person: Person
    let login: String
    let password: String
    
    static func getUserData() -> User {
        User(person: Person.getPerson(), login: "ToraxTheDog", password: "Bones")
    }
}

// MARK: - Person
struct Person {
    
    // User info properties
    let name: String
    let surname: String
    var age: Int
    var image: String
    
    static func getPerson() -> Person {
        Person(name: "Torax", surname: "Shalgin", age: 3, image: "UserPhoto")
    }
}

// MARK: - User Profile Info
struct UserProfileInfo {
    var photoAlbum: [String]
    var friendsList: String
    var friendsCount: Int
    
    static func getUserProfileInfo() -> UserProfileInfo {
        UserProfileInfo(
            photoAlbum: getPhotoName(),
            friendsList: getFriendsList(),
            friendsCount: getNumberOfFriends()
        )
    }
}

enum PhotoAlbum: String, CaseIterable {
    case photo1 = "UserPhoto2"
    case photo2 = "UserPhoto3"
}

enum FriendsName: String, CaseIterable {
    case dog = "Dog 🐶"
    case cat = "Cat 🐱"
    case mouse = "Mouse 🐭"
    case bear = "Bear 🐻"
}

// MARK: - Extensions for User Profile Info
extension UserProfileInfo {
    static func getFriendsList() -> String {
        var nameList: String
        var nameArray: [String] = []
        
        for name in FriendsName.allCases {
            nameArray.append(name.rawValue)
        }
        nameList = nameArray.joined(separator: "\n")
        return nameList
    }
    
    static func getNumberOfFriends() -> Int {
        var nameArray: [String] = []
        for name in FriendsName.allCases {
            nameArray.append(name.rawValue)
        }
        return nameArray.count
    }
    
    static func getPhotoName() -> [String] {
        var photoNames: [String] = []
        
        for name in PhotoAlbum.allCases {
            photoNames.append(name.rawValue)
        }
        return photoNames
    }
}
