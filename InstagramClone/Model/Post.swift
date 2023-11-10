//
//  Post.swift
//  InstagramClone
//
//  Created by Azhar Bahleem on 06/10/23.
//

import Foundation
import Firebase

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Timestamp
    var user: User?
}


extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "bal bal bal black sheep",
            likes: 83,
            imageUrl: "puja",
            timestamp: Timestamp(),
            user: User.MOCK_USER[0]
        ),
        
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                caption: "bal bal bal black sheep",
                likes: 43,
                imageUrl: "puja",
                timestamp: Timestamp(),
                user: User.MOCK_USER[1]
            ),
        
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                caption: "bal bal bal black sheep",
                likes: 23,
                imageUrl: "puja",
                timestamp: Timestamp(),
                user: User.MOCK_USER[2]
            ),
        
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                caption: "bal bal bal black sheep",
                likes: 87,
                imageUrl: "puja",
                timestamp: Timestamp(),
                user: User.MOCK_USER[3]
            ),
        
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                caption: "bal bal bal black sheep",
                likes: 64,
                imageUrl: "puja",
                timestamp: Timestamp(),
                user: User.MOCK_USER[4]
            ),
    ]
}
