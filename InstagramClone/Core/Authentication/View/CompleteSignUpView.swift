//
//  CompleteSignUpView.swift
//  InstagramClone
//
//  Created by Azhar Bahleem on 04/10/23.
//

import SwiftUI

struct CompleteSignUpView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegistrationViewModel
    
    var body: some View {
        
        
        VStack {
            
            Image("og2")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
                .padding()
            
      
            
            Text("Welcome \(viewModel.username), Destination for best Doctor-Patient experience")
                .font(.headline)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Click below to complete registeration and start using PereGreen")
                .font(.footnote)
                .foregroundStyle(Color.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
          
            
            Button {
                Task { try await viewModel.createUser() }
            } label: {
                Text("Complete Sign Up")
                    .frame(width: 340, height: 44)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(20)
                    .padding(12)
            }
            
            Spacer()
            
        }
        
        
    }
}

#Preview {
    CompleteSignUpView().environmentObject(RegistrationViewModel())
}
