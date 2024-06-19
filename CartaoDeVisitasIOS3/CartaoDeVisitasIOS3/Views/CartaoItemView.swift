//
//  CartaoItemView.swift
//  CartaoDeVisitasIOS3
//
//  Created by Ana Carolina Barbosa de Souza on 16/06/24.
//

import SwiftUI

struct CartaoItemView: View {
    @StateObject var viewModel = CartaoItemViewViewModel()
    let item: CartaoItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.titleName)
                    .font(.title)
                    .bold()
                Text(item.titleEmail.lowercased())
//                    .font(.footnote)
                    .autocapitalization(.none)
                Text(item.titlePhone)
                Text(item.titleJob)
                Text(item.titleLinkedin)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                Text(item.titleGithub)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
            }
            Spacer()
            
            
        }
    }
}

#Preview {
    CartaoItemView(item: .init(
        id: "123",
        titleName: "Jose",
        titleEmail: "Jose",
        titlePhone: "44448888",
        titleJob: "CEO",
        titleLinkedin: "Jose",
        titleGithub: "Jose",
        createdDate: Date().timeIntervalSince1970
    ))
}
