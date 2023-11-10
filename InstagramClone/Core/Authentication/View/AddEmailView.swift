//
//  AddEmailView.swift
//  InstagramClone
//
//  Created by Azhar Bahleem on 30/09/23.
//

import SwiftUI

struct AddEmailView: View {
    //@State var email: String = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegistrationViewModel
    
    var body: some View {
        VStack {
            Text("Add your email")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("You will use this email to sign in to your account")
                .font(.footnote)
                .foregroundStyle(Color.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            TextField("Enter your email..", text: $viewModel.email)
                .font(.subheadline)
                .padding(12)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(20)
                .padding(.horizontal, 24)
                .padding(.top)
            
            
            NavigationLink {
                CreateUsernameView()
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
    AddEmailView().environmentObject(RegistrationViewModel())
}
