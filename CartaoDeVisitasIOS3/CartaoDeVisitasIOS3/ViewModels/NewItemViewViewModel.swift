//
//  NewItemViewViewModel.swift
//  CartaoDeVisitasIOS3
//
//  Created by Ana Carolina Barbosa de Souza on 16/06/24.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var titleName = ""
    @Published var titleEmail = ""
    @Published var titlePhone = ""
    @Published var titleJob = ""
    @Published var titleLinkedin = ""
    @Published var titleGithub = ""
    @Published var showAlert = false
    
    
    init() {}
    
    func save() {
        guard canSave else {
            return
        }
        // get current user id
        guard let uId = Auth.auth().currentUser?.uid else {
            return
        }
        
        //create model
        let newId = UUID().uuidString
        let newItem = CartaoItem(id: newId,
                                 titleName: titleName,
                                 titleEmail: titleEmail,
                                 titlePhone: titlePhone,
                                 titleJob: titleJob,
                                 titleLinkedin: titleLinkedin,
                                 titleGithub: titleGithub,
                                 createdDate: Date().timeIntervalSince1970
//                                 isDone: false
        )
        
        //save model
        let db = Firestore.firestore()
        db.collection("users")
            .document(newId)
            .collection("cartões")
            .document("123")
            .setData(newItem.asDictionary())
    }
    
    var canSave: Bool {
        guard !titleName.trimmingCharacters(in: .whitespaces).isEmpty,
              !titleEmail.trimmingCharacters(in: .whitespaces).isEmpty,
              !titlePhone.trimmingCharacters(in: .whitespaces).isEmpty,
              !titleJob.trimmingCharacters(in: .whitespaces).isEmpty,
              !titleLinkedin.trimmingCharacters(in: .whitespaces).isEmpty,
              !titleGithub.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
//        guard dueDate >= Date().addingTimeInterval(-86400) else {
//            return false
//        }
        return true
              
    }
    
}
