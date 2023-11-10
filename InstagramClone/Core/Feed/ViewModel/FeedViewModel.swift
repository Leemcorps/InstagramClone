//
//  FeedViewModel.swift
//  InstagramClone
//
//  Created by Azhar Bahleem on 10/11/23.
//

import Foundation
import Firebase


@MainActor
class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    init() {
        Task { try await fetchPosts() }
    }
    
    @MainActor
    func fetchPosts() async throws {
        self.posts = try await PostService.fetchFeedPosts() 
    }
}
