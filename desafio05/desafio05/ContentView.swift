//
//  ContentView.swift
//  desafio05
//
//  Created by Turma02-28 on 21/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        TabView {
            Rosa()
                .badge(14)
                .tabItem{
                    Label("Home", systemImage: "house.fill")
                }
            Azul()
                .badge(0)
                .tabItem{
                    Label("Criações", systemImage: "paintpalette")
                }
            Cinza()
                .badge(21)
                .tabItem{
                    Label("Emails", systemImage: "paperplane")
                }
            Lists()
                .badge("!")
                .tabItem{
                    Label("Conta", systemImage: "person.crop.circle")
                }
        }
    }
}
#Preview {
    ContentView()
}
