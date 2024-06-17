//
//  NewItemView.swift
//  CartaoDeVisitasIOS3
//
//  Created by Ana Carolina Barbosa de Souza on 16/06/24.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var newItemPresented: Bool
    
    var body: some View {
        VStack {
            Text("Novo Item")
                .font(.system(size: 32))
                .bold()
                .padding(.top, 100)
            
            Form {
                
                TextField("Nome", text: $viewModel.titleName)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("E-mail", text: $viewModel.titleEmail)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Telefone", text: $viewModel.titlePhone)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Cargo", text: $viewModel.titleJob)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Linkedin", text: $viewModel.titleLinkedin)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("GitHub", text: $viewModel.titleGithub)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                //                // due date
                //                DatePicker("Vence em:", selection: $viewModel.dueDate)
                //                    .datePickerStyle(GraphicalDatePickerStyle())
                
                //button
                CartaoButton(title: "Salvar", background: .pink) {
                    if viewModel.canSave { viewModel.save()
                        newItemPresented = false
                    } else {
                        viewModel.showAlert = true
                    }
                }
                .padding()
            }
            .alert(isPresented: $viewModel.showAlert) {
                Alert(
                    title: Text("Error"),
                    message: Text("Por favor, preencha todos os campos")
                )
            }
        }
    }
}

#Preview {
    NewItemView(newItemPresented: Binding(get: {
        return true
    }, set: { _ in
        
    }))
}
