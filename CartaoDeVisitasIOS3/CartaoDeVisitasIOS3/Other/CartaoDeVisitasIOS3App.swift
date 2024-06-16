//
//  CartaoDeVisitasIOS3App.swift
//  CartaoDeVisitasIOS3
//
//  Created by Ana Carolina Barbosa de Souza on 16/06/24.
//

import FirebaseCore
import SwiftUI

@main
struct CartaoDeVisitasIOS3App: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
