//
//  ContentView.swift
//  CartaoDeVisitasIOS3
//
//  Created by Ana Carolina Barbosa de Souza on 17/06/24.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("currentPage") var currentPage = 1
    
    var body: some View {
        
        if currentPage > totalPages {
            MainView()
        } else {
            OnboardingScreen()
        }
        
    }
}

#Preview {
    ContentView()
}

var totalPages = 3
//Onboarding Screens

struct OnboardingScreen: View {
    
    @AppStorage("currentPage") var currentPage = 1
    
    var body: some View {
        ZStack{
            
            if currentPage == 1 {
                ScreenView(image: "onboarding1", title: "Comece aqui", details: "")
            }
            
            if currentPage == 2 {
                ScreenView(image: "onboarding2", title: "Facilita o Networking", details: "")
            }
            
            if currentPage == 3 {
                ScreenView(image: "onboarding3", title: "Sustentável", details: "")
            }
        }
    }
}

struct ScreenView: View {
    
    @AppStorage("currentPage") var currentPage = 1
    
    var image: String
    var title: String
    var details: String
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    
                    if currentPage == 1 {
                        Text("Bem-vindo(a)!")
                            .font(.title)
                            .fontWeight(.semibold)
                            .kerning(1.4)
                    } else {
                        Button(action: {
                            currentPage -= 1
                        }, label: {
                            Image(systemName: "chevron.left")
                                .foregroundColor(.white)
                                .padding(.vertical, 10)
                                .padding(.horizontal)
                                .background(Color.black.opacity(0.4))
                                .cornerRadius(10)
                        })
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        
                        currentPage = 4
                        
                    }, label: {
                        Text("Skip")
                            .fontWeight(.semibold)
                            .kerning(1.2)
                    })
                }.padding()
                    .foregroundColor(.black)
                
                Spacer(minLength: 0)
                
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 16)
                    .frame(height: 300)
                
                Spacer(minLength: 80)
                
                Text(title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .kerning(1.2)
                    .padding(.top)
                    .padding(.bottom, 5)
                    .foregroundColor(Color("mainColor"))
                
                Text("Um cartão de visitas é uma ferramenta muito importante para o networking e marketing pessoal. E na era digital, porque não um virtual?")
                    .font(.body)
                    .fontWeight(.regular)
                    .kerning(1.2)
                    .padding([.leading, .trailing])
                    .multilineTextAlignment(.center)
                
                Spacer(minLength: 0)
                
                HStack {
                    
                    if currentPage == 1 {
                        Color("mainColor").frame(height: 8 / UIScreen.main.scale)
                        Color.gray.frame(height: 8 / UIScreen.main.scale)
                        Color.gray.frame(height: 8 / UIScreen.main.scale)
                    } else if currentPage == 2 {
                        Color.gray.frame(height: 8 / UIScreen.main.scale)
                        Color("mainColor").frame(height: 8 / UIScreen.main.scale)
                        Color.gray.frame(height: 8 / UIScreen.main.scale)
                    } else if currentPage == 3 {
                        Color.gray.frame(height: 8 / UIScreen.main.scale)
                        Color.gray.frame(height: 8 / UIScreen.main.scale)
                        Color("mainColor").frame(height: 8 / UIScreen.main.scale)
                    }
                    
                }
                .padding(.horizontal, 35)
                
                Button(action: {
                    if currentPage <= totalPages {
                        currentPage += 1
                    } else {
                        currentPage = 1
                    }
                }, label: {
                    
                    if currentPage == 3 {
                        Text("Começar")
                            .fontWeight(.semibold)
                            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color("mainColor"))
                            .cornerRadius(40)
                            .padding(.horizontal, 16)
                    } else {
                        Text("Próximo")
                            .fontWeight(.semibold)
                            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color("mainColor"))
                            .cornerRadius(40)
                            .padding(.horizontal, 16)
                    }
                    
                })
            }
        }
    }
}
