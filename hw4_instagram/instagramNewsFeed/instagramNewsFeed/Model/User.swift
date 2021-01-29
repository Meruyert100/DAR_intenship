//
//  User.swift
//  instagramNewsFeed
//
//  Created by Meruyert Tastandiyeva on 1/29/21.
//

import UIKit

struct User {
    
    var avatar: UIImage
    var username: String
    
    static func fetchUsers() -> [User] {
        var users = [User]()
        
        let user1 = User(avatar: UIImage(imageLiteralResourceName: "plus_icon"), username: "Your Story")
        let user2 = User(avatar: UIImage(imageLiteralResourceName: "tolstoy"), username: "tolstoy")
        let user3 = User(avatar: UIImage(imageLiteralResourceName: "dickens"), username: "dickens")
        let user4 = User(avatar: UIImage(imageLiteralResourceName: "fedor"), username: "dFedor")
        let user5 = User(avatar: UIImage(imageLiteralResourceName: "margaret"), username: "margo")
        let user6 = User(avatar: UIImage(imageLiteralResourceName: "nietzche"), username: "amorfati")
        
        users.append(user1)
        users.append(user2)
        users.append(user3)
        users.append(user4)
        users.append(user5)
        users.append(user6)
        
        return users
    }
}
