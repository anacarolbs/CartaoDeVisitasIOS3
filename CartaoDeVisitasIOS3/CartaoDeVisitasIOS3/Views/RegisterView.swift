//
//  RegisterView.swift
//  CartaoDeVisitasIOS3
//
//  Created by Ana Carolina Barbosa de Souza on 16/06/24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            //header
            HeaderView(title: "Cadastre-se", subtitle: "Comece a organizar seus contatos", angle: -15, background: .orange)
            
            Form {
                TextField("Nome completo", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("E-mail", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .autocorrectionDisabled()
                SecureField("Senha", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                CartaoButton(title: "Criar conta", background: .green) {
                    viewModel.register()
                    //attempt registration
                }
                .padding()
            }
            
            .offset(y: -50)
            
            Spacer()
    
        }
    }
}

#Preview {
    RegisterView()
}
