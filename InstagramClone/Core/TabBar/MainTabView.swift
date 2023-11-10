//
//  MainTabView.swift
//  InstagramClone
//
//  Created by Azhar Bahleem on 26/09/23.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0
    let user: User
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            FeedView()
                .onAppear {
                    selectedIndex = 0
                }
            
                .tabItem {
                    Text("Home")
                    Image(systemName: "house.fill")
                }.tag(0)
            
            
            
            SearchView()
                .onAppear {
                    selectedIndex = 1
                }
            
                .tabItem {
                    Text("search")
                    Image(systemName: "magnifyingglass")
                }.tag(1)
            
            
            
            UplaodPostView(tabIndex: $selectedIndex)
                .onAppear {
                    selectedIndex = 2
                }
            
                .tabItem {
                    Text("Post")
                    Image(systemName: "square.and.pencil")
                }.tag(2)
            
            
            
            Text("feed")
                .onAppear {
                    selectedIndex = 3
                }
            
                .tabItem {
                    Text("Notifications")
                    Image(systemName: "heart")
                }.tag(3)
            
            
            
            
            CurrentUserProfileView(user: user)
                .onAppear {
                    selectedIndex = 4
                }
            
                .tabItem {
                    Text("Profile")
                    Image(systemName: "person")
                }.tag(4)
            
            
        }
        .accentColor(.black)
    }
}

#Preview {
    MainTabView(user: User.MOCK_USER[1])
}
