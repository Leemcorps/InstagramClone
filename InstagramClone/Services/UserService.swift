//
//  UserService.swift
//  InstagramClone
//
//  Created by Azhar Bahleem on 08/11/23.
//

import Foundation
import Firebase

struct UserService {
    
    static func fetchUser(withUid uid: String) async throws -> User {
        
        let snapshot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        
        return try snapshot.data(as: User.self)
    }
    
    func fetchAllUsersData() async throws -> [User] {
        var users = [User]()
        
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        let documents = snapshot.documents
        
        for doc in documents {
            guard let user = try? doc.data(as: User.self) else { return users }
            users.append(user)
        }
        
        return users
    }
}
