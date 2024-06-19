//
//  CartaoItemsView.swift
//  CartaoDeVisitasIOS3
//
//  Created by Ana Carolina Barbosa de Souza on 16/06/24.
//

import FirebaseFirestoreSwift
import SwiftUI

struct CartaoView: View {
    @StateObject var viewModel: CartaoViewViewModel
    @FirestoreQuery var items: [CartaoItem]
        
    init(userId: String){
        // users/<id>/cartoes/<entries>
        self._items = FirestoreQuery(
            collectionPath: "users/\(userId)/cartoes"
        )
        self._viewModel = StateObject(
            wrappedValue: CartaoViewViewModel(userId: userId)
        )
    }
    var body: some View {
        NavigationView {
            VStack {
                List(items) { item in CartaoItemView(item: item)
                        .swipeActions {
                            Button("Apagar"){
                                viewModel.delete(id: item.id)
                            }
                            .tint(.red)
                        }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("Cartões de Visitas")
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
    CartaoView(userId: "G03LaVMYKyZ1EWQytsGXN3nmzEK2")
}
