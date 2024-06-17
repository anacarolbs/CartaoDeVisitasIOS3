//
//  LoginView.swift
//  CartaoDeVisitasIOS3
//
//  Created by Ana Carolina Barbosa de Souza on 16/06/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
        
    var body: some View {
        NavigationView {
            VStack {
                //header
                HeaderView(title: "Cartão de Visitas", subtitle: "Seus contatos a um clique", angle: 15, background: .pink)
                
                //login form
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    
                    TextField("Endereço de e-mail", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    SecureField("Senha", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    CartaoButton(title: "Entrar", background: .blue) {
                        //Attempt log in
                        viewModel.login()
                    }
                    .padding()
                }
                .offset(y: -50)
                
                //create account
                VStack {
                    Text("Novo por aqui?")
                    NavigationLink("Crie sua conta", destination: RegisterView())
                }
                
                .padding(.bottom, 50)
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
