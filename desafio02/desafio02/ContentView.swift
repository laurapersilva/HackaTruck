//
//  ContentView.swift
//  Desafio03
//
//  Created by Turma21-02 on 19/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username = ""
    @State private var popup = false
    
    var body: some View {
        ZStack {
            Image("HackaFundo")
                .resizable()
                .frame(width: 900, height: 900)
                .scaledToFill()
                .opacity(0.1)
            VStack () {
                Text("Bem vindo, \(username)")
                    .font(.largeTitle)
                TextField("Digite seu nome", text: $username)
                      .multilineTextAlignment(.center)
            
                Spacer()
                
                VStack {
                    Image("HackaTransparente")
                        .resizable()
                        .frame(width: 230, height: 100)
                        .scaledToFill()
                    Image("HackaTransparente2")
                        .resizable()
                        .frame(width: 330, height: 90)
                        .scaledToFill()
                }
                
                Spacer()
                
                Button("Entrar") {
                    popup = true
                }
                .alert(isPresented:$popup) {
                    Alert(
                        title: Text("ALERTA !"),
                        message: Text("Você irá iniciar o desafio da aula agora"),
                        dismissButton: .default(Text("Vamos lá!"))
                    )
                }
            }
            .scaledToFit()
            .padding(EdgeInsets(top: 80, leading: 0, bottom: 60, trailing: 0))
        }
    }
}

#Preview {
    ContentView()
}

