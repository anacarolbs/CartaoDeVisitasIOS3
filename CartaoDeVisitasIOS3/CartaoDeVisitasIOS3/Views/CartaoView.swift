//
//  CartaoItemsView.swift
//  CartaoDeVisitasIOS3
//
//  Created by Ana Carolina Barbosa de Souza on 16/06/24.
//

import SwiftUI

struct CartaoView: View {
    @StateObject var viewModel = CartaoViewViewModel()
    
    private let userId: String
    
    init(userId: String){
        self.userId = userId
    }
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("Cartão de Visitas")
            .toolbar {
                Button {
                    //action
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
    }
}

#Preview {
    CartaoView(userId: "")
}
