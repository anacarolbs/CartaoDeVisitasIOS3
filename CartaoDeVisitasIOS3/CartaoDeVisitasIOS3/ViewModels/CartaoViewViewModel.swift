//
//  CartaoViewViewModel.swift
//  CartaoDeVisitasIOS3
//
//  Created by Ana Carolina Barbosa de Souza on 16/06/24.
//

import FirebaseFirestore
import Foundation

/// ViewModel for list of items view
/// primary tab
class CartaoViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    /// Delete cartao item
    /// - Parameter id: item id to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document("userId")
            .collection("cartoes")
            .document(id)
            .delete()
    }
}
