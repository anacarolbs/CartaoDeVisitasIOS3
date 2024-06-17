//
//  ContentView.swift
//  CartaoDeVisitasIOS3
//
//  Created by Ana Carolina Barbosa de Souza on 16/06/24.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            accountView
        } else {
            LoginView()
        }
    }
        
    @ViewBuilder
    var accountView: some View {
        TabView {
            CartaoView(userId: viewModel.currentUserId)
                .tabItem {
                    Label("Início", systemImage: "house")
                }
            ProfileView()
                .tabItem {
                    Label("Perfil", systemImage: "person.circle")
                }
        }
    }
}

#Preview {
    MainView()
}

