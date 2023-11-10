//
//  CreatePasswordView.swift
//  InstagramClone
//
//  Created by Azhar Bahleem on 04/10/23.
//

import SwiftUI

struct CreatePasswordView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegistrationViewModel
    
    var body: some View {
        VStack {
            Text("Create a password")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Your password must be at least 6 characters in length")
                .font(.footnote)
                .foregroundStyle(Color.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            SecureField("Password", text: $viewModel.password)
                .font(.subheadline)
                .padding(12)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(20)
                .padding(.horizontal, 24)
                .padding(.top)
            
            NavigationLink {
                CompleteSignUpView()
            } label: {
                Text("Next")
                    .frame(width: 340, height: 44)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(20)
                    .padding(12)
            }
            
        }
    }
}

#Preview {
    CreatePasswordView().environmentObject(RegistrationViewModel())
}
