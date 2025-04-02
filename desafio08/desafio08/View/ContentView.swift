//
//  ContentView.swift
//  desafio08
//
//  Created by Turma02-28 on 26/03/25.
//

import SwiftUI


struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("Color").ignoresSafeArea()
                VStack {
                    HStack{
                        Image("Grif")
                            .resizable()
                            .scaledToFit()
                            .ignoresSafeArea()
                    }
                    
                    ScrollView{
                        VStack{
                            ForEach(viewModel.personagens) { i in
                                HStack{
                                    Image(i.image!)
                                        .resizable()
                                        .scaledToFit()
                                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                        .frame(width:90, height:90)
                                    
                                    @State var nome: String! = i.name
                                    @State var act: String! = i.actor
                                    @State var ft: String! = i.image
                                    @State var pat: String! = i.patronus
                                    
                                    NavigationLink(destination: Especific(receiveF: ft, receiveN: nome, receiveA: act)){
                                        ZStack {
                                            Text(i.name!)
                                                .foregroundStyle(.white)
                                        }
                                        
                                    }
                                    
                                }
                            }
                        }
                        .frame(maxWidth: .infinity)
                    }
                }
            }
            .onAppear() {
                viewModel.fetch()
            } // serve para forcar a aparecer aqui, chamando a funcao fetch
           
        }
        
    }
}

#Preview {
    ContentView()
}
