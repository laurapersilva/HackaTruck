//
//  ContentView.swift
//  desafio07
//
//  Created by Turma02-28 on 24/03/25.
//

import SwiftUI

struct Song: Identifiable {
    var id: Int
    var name: String
    var artist: String
    var capa: String
}

struct ContentView: View {
    @State var arrayMusicas: [Song] = [
        Song(id: 1, name: "Soupanascajanga", artist: "Laura Persilva", capa: "ABC"),
        Song(id: 2, name: "Carioca Girls", artist: "Laura Persilva", capa: "DEF"),
        Song(id: 3, name: "Shake It Bololo", artist: "Laura Persilva", capa: "GHI"),
        Song(id: 4, name: "Bolsonaro é morte", artist: "Laura Persilva", capa: "JKL"),
        Song(id: 5, name: "Shallow Now", artist: "Laura Persilva", capa: "MNO")
        
    ]
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(colors: [.green, .black], startPoint: .top, endPoint: .center)
                    .ignoresSafeArea()
                VStack{
                    VStack{
                        Image("cape")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Rectangle())
                            .frame(width: 200, height: 300)
                    }
                    HStack {
                        VStack(alignment: .leading){
                            Text("HackaFM")
                                .foregroundStyle(.white)
                                .font(.title)
                            HStack {
                                Image("cape")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .frame(width: 40, height: 40)
                                    .cornerRadius(5.0)
                                Text("HackaSong")
                                    .foregroundStyle(.white)
                                    .frame(alignment: .leading)
                                    .font(.subheadline)
                                
                            }
                        }
                        Spacer()
                    }.padding()
                    Spacer()
                    VStack {
                        ForEach(arrayMusicas) { i in
                            HStack(alignment: .top){
                                Image(i.capa)
                                    .resizable()
                                    .scaledToFit()
                                
                                @State var nome: String = i.name
                                @State var art: String = i.artist
                                @State var ft: String = i.capa
                                
                                VStack(alignment: .leading){
                                    NavigationLink(destination: Especific(receiveF: ft, receiveN: nome, receiveA: art)) {
                                        ZStack{
                                            Text(i.name)
                                                .foregroundStyle(.white)
                                                .font(.system(size: 20))
                                        }
                                    }
                                    Text(i.artist)
                                        .foregroundStyle(.white)
                                        .font(.system(size: 15))
                                }
                                Spacer()
                                Image(systemName: "ellipsis")
                                    .foregroundStyle(.white)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
