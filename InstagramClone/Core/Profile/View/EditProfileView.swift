//
//  EditProfileView.swift
//  InstagramClone
//
//  Created by Azhar Bahleem on 09/11/23.
//

import SwiftUI
import PhotosUI

struct EditProfileView: View {
    @Environment(\.dismiss) var dismiss

    @StateObject var viewModel: EditProfileViewModel
    
    init(user: User) {
        self._viewModel = StateObject(wrappedValue: EditProfileViewModel(user: user))
    }
    
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Button("Cancel") {
                        dismiss()
                    }
                    
                    Spacer()
                    
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    Button {
                        Task { 
                            try await viewModel.updateUserData()
                            dismiss()
                        }
                    } label: {
                         Text("Done")
                            .font(.subheadline)
                            .fontWeight(.bold)
                    }
                }
                .padding()
            }
            
            Divider()
        }
        
        // Edit profile pic
        
        PhotosPicker(selection: $viewModel.selectedImage) {
            VStack {
                if let image = viewModel.profileImage {
                    image.resizable()
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                } else {
                    CircularProfileImageView(user: viewModel.user, size: .large)
                }
                
                Text("Edit profile picture")  
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.blue)
                    .padding(.vertical, 8)
            }
        }

        Divider()
        
       
            HStack {
                Text("Name")
                    .padding(.leading, 8)
                    .frame(width: 100, alignment: .leading)
                
              
                
                TextField("Enter your name..", text: $viewModel.fullName)
                
            }
            .frame(height: 36)
            
            HStack {
                Text("Bio")
                    .padding(.leading, 8)
                    .frame(width: 100, alignment: .leading)
                
                
                
                TextField("Enter your bio..", text: $viewModel.bio)
            }
            .frame(height: 36)
      
        Spacer()
    }
}

#Preview {
    EditProfileView(user: User.MOCK_USER[0])
}
