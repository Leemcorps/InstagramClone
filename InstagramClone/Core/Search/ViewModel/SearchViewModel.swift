//
//  SearchViewModel.swift
//  InstagramClone
//
//  Created by Azhar Bahleem on 08/11/23.
//

import Foundation

class SearchViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fetchAllUsers() }
    }
    @MainActor
    func fetchAllUsers() async throws {
        self.users = try await UserService().fetchAllUsersData()
    }
}
