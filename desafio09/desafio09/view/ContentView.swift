//
//  ContentView.swift
//  desafio09
//
//  Created by Turma02-28 on 29/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("rebi").ignoresSafeArea()
                VStack {
                    Image("reb")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 280)
                    
                    ScrollView{
                        VStack{
                            ForEach(viewModel.personagens, id: \.self) { i in
                                HStack{
                                    AsyncImage(url: URL(string: i.img!)) { image in
                                        image.resizable()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    .frame(width: 150, height: 150)

                                    NavigationLink (destination: Descript()){
                                        Text(i.nome!)
                                            .foregroundStyle(.white)
                                            .font(.custom("Cochin", size: 30))
                                    }
                                    
                                }
                            }
                        }
                    }
                }
            }
            .onAppear() {
                viewModel.fetch()
            }
        }
    }
}

#Preview {
    ContentView()
}
