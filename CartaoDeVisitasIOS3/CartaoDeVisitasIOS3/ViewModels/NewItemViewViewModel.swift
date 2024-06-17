//
//  NewItemViewViewModel.swift
//  CartaoDeVisitasIOS3
//
//  Created by Ana Carolina Barbosa de Souza on 16/06/24.
//

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
