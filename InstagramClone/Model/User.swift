//
//  User.swift
//  InstagramClone
//
//  Created by Azhar Bahleem on 05/10/23.
//

import Foundation
import Firebase

struct User: Identifiable, Codable, Hashable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullName: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else { return false }
        return currentUid == id
    }
}

extension User {
    static var MOCK_USER: [User] = [
        .init(id: NSUUID().uuidString, username: "Meow_Meow", profileImageUrl: nil, fullName: "Puja Rai", email: "puja@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Leemcorps", profileImageUrl: nil, fullName: "Azhar Bahleem", email: "azar@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Pappu_420", profileImageUrl: nil, fullName: "Praveen kumar", email: "praveen@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Uncle_69", profileImageUrl: nil, fullName: "Sai Manoj", email: "manoj@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Bili_chod", profileImageUrl: nil, fullName: "Janam Bachwani", email: "janam@gmail.com")
        
    ]
}
