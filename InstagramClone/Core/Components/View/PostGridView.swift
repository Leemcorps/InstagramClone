//
//  PostGridView.swift
//  InstagramClone
//
//  Created by Azhar Bahleem on 09/10/23.
//

import SwiftUI
import Kingfisher

struct PostGridView: View {
    @StateObject var viewModel: PostGridViewModel
    
    init(user: User) {
        self._viewModel = StateObject(wrappedValue: PostGridViewModel(user: user))
    }
    
    private let gridItem: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    private let imageDimensions: CGFloat = (UIScreen.main.bounds.width / 3) - 1
    
    var body: some View {
        
        
        LazyVGrid(columns: gridItem, spacing: 1) {
            ForEach(viewModel.posts) { post in
                
                KFImage(URL(string: post.imageUrl))
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageDimensions, height: imageDimensions)
                    .clipped()
            }
            
        }
        
    }
}

#Preview {
    PostGridView(user: User.MOCK_USER[0])
}
