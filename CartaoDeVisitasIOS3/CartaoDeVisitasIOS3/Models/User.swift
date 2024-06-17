//
//  User.swift
//  CartaoDeVisitasIOS3
//
//  Created by Ana Carolina Barbosa de Souza on 16/06/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
