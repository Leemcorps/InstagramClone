//
//  LoginView.swift
//  MessengerApp
//
//  Created by Azhar Bahleem on 28/08/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationStack {

            VStack {
                
                Spacer()
                
                // logo image
                Image("og2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .padding()
                
                
                // text fields
                VStack {
                    TextField("Enter your email", text: $viewModel.email)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(20)
                        .padding(.horizontal, 24)
                    
                    SecureField("Enter your password", text: $viewModel.password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(20)
                        .padding(.horizontal, 24)
                }
                
                
                
                // forgot password
                
                Button {
                    print("forgot password")
                } label: {
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                        .foregroundColor(.black.opacity(0.7))
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                // login button
                
                Button{
                    Task { try await viewModel.signIn() }
                } label: {
                    Text("Sign In")
                        .frame(width: 340, height: 44)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(20)
                        .padding(12)
                        
                        
                    
                }
                
                
                //Facebook login
                
                HStack {
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                    
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                }
                .foregroundColor(.gray)
                
                HStack {
//                    Image("facebook2")
//                        .resizable()
//                        .frame(width: 20, height: 20)
                    
                    Text("Continue with facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(.black.opacity(0.7))
                }
                .padding(.top, 8)
                
                Spacer()
                
                // sign up link
                
                Divider()
                
                NavigationLink {
                    
                AddEmailView()
                        
                        
                    
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?")
                            .foregroundColor(.black.opacity(0.7))
                        
                        Text("Sign Up")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.green)
                            
                    }
                    .font(.footnote)
                }
                .padding(.vertical)

                
            }
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
