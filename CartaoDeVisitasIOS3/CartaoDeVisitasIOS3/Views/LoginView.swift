//
//  LoginView.swift
//  CartaoDeVisitasIOS3
//
//  Created by Ana Carolina Barbosa de Souza on 16/06/24.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
        
    var body: some View {
        NavigationView {
            VStack {
                //header
                HeaderView(title: "Cartão de Visitas", subtitle: "Seus contatos a um clique", angle: 15, background: .pink)
                
                //login form
                Form {
                    TextField("Endereço de e-mail", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Senha", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    Button {
                        // Attempt log in
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            
                            Text("Entrar")
                                .foregroundColor(.white)
                                .bold()
                        }
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
