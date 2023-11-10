//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Azhar Bahleem on 26/09/23.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    @State private var showEditProfile: Bool = false
    
    
    var body: some View {
        

            ScrollView {
            VStack {
                //header
                
                VStack {
                    //pic and stats
                    
                    HStack {
                        CircularProfileImageView(user: user, size: .medium)
                        
                        Spacer()
                        
                        StatView(value: 12, title: "Posts")
                        
                        StatView(value: 99, title: "Followers")
                        
                        StatView(value: 109, title: "Following")

                        
                    }.padding()
                    
                    //name and bio
                    VStack(alignment: .leading, spacing: 4) {
                        if let fullName = user.fullName {
                            Text(fullName)
                                .font(.footnote)
                                .fontWeight(.semibold)
                        }
                        
                        if let bio = user.bio {
                            Text(bio)
                                .font(.footnote)
                        }
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    //Action button
                    
                    Button {
                        if user.isCurrentUser {
                            showEditProfile.toggle()
                        } else {
                            print("follow")
                        }
                    } label: {
                        Text(user.isCurrentUser ? "Edit Profile" : "Follow")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .background(user.isCurrentUser ? .white : .blue)
                            .foregroundStyle(user.isCurrentUser ? .black : .white)
                            .clipShape(.rect(cornerRadius: 20))
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(user.isCurrentUser ? .gray : .clear, lineWidth: 1)
                            )
                        
                    }
                    
                    Divider()
                }
                
                //post grid view
                
                PostGridView(user: user)

                }
            .fullScreenCover(isPresented: $showEditProfile) {
                EditProfileView(user: user)
            }
                
                
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)

        
    }
}

#Preview {
    ProfileView(user: User.MOCK_USER[1])
}
