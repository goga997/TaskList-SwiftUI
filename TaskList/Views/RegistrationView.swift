//
//  RegistrationView.swift
//  TaskList
//
//  Created by Grigore on 23.12.2023.
//

import SwiftUI

struct RegistrationView: View {
    
    @StateObject var viewModel = RegistrationViewModel()
    
    var body: some View {
        VStack {
            //Header
            HeaderView(title: "Registration",
                       subtitle: "Start Organizing Tasks",
                       angle: -15, backGroung: .orange)
            
            //Form
            Form {
                TextField("Full Name ", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Adress", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text:  $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                CustomButton(title: "Register",
                             background: .green ) {
                    //Atempt Register
                    viewModel.register()
                }
                             .padding()
            }
            .offset(y: -50)
        }
        Spacer()
    }
}

#Preview {
    RegistrationView()
}
