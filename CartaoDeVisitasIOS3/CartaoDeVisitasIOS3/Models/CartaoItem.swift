//
//  CartaoItem.swift
//  CartaoDeVisitasIOS3
//
//  Created by Ana Carolina Barbosa de Souza on 16/06/24.
//

import Foundation

struct CartaoItem: Codable, Identifiable {
    let id: String
    let titleName: String
    let titleEmail: String
    let titlePhone: String
    let titleJob: String
    let titleLinkedin: String
    let titleGithub: String
    let createdDate: TimeInterval
//    let isDone: Bool
    
//    mutating func setDone(_ state: Bool) {
//        isDone = state
//    }
}
