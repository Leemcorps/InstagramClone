//
//  FeedCell.swift
//  InstagramClone
//
//  Created by Azhar Bahleem on 27/09/23.
//

import SwiftUI
import Kingfisher

struct FeedCell: View {
    let post: Post
    var body: some View {
        
        VStack {
            // image + username
            
            if let user = post.user {
                HStack {
                    CircularProfileImageView(user: user, size: .xSmall)
                    
                    Text(user.fullName ?? "")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                        Spacer()
            }
            .padding(.horizontal, 10)
                
                
                
            }
            
            
            // post image
            
            KFImage(URL(string: post.imageUrl))
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .frame(width: UIScreen.main.bounds.width - 20)
                //.clipShape(Rectangle())
                .cornerRadius(20)
                //.padding()
            
            // Action button
            
            HStack(spacing: 16) {
                Button {
                    print("like post")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button {
                    print("Comment on posts")
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                
                Button {
                    print("Share posts")
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
             
                Spacer()
                
            }
            .padding(.leading, 10)
            
            // Likes label
            
            Text("\(post.likes) likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
            
            
            
            // caption label
            
            HStack {
                Text("\(post.user? .username ?? "")")
                    .fontWeight(.semibold)
                +
                Text(post.caption)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .padding(.leading, 10)
            .padding(.top, 1)
        
            
            Text("\(Data())")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.footnote)
                .padding(.leading, 10)
                .padding(.top, 1)
                .foregroundStyle(Color.gray)
            
            
        }
        
    }
}

#Preview {
    FeedCell(post: Post.MOCK_POSTS[0])
}
