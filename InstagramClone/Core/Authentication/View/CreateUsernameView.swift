//
//  CreateUsernameView.swift
//  InstagramClone
//
//  Created by Azhar Bahleem on 04/10/23.
//

import SwiftUI

struct CreateUsernameView: View {
    //@StateObject var viewModel = RegistrationViewModel()
    //@Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegistrationViewModel
    var body: some View {
        VStack {
            Text("Create username")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Pick a username for your account. You can always change it later")
                .font(.footnote)
                .foregroundStyle(Color.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            TextField("Username", text: $viewModel.username)
                .font(.subheadline)
                .padding(12)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(20)
                .padding(.horizontal, 24)
                .padding(.top)
            
            NavigationLink {
                CreatePasswordView()
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
    CreateUsernameView().environmentObject(RegistrationViewModel())
}
