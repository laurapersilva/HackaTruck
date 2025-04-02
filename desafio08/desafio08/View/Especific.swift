//
//  Especific.swift
//  desafio08
//
//  Created by Turma02-28 on 26/03/25.
//

import SwiftUI


struct Especific: View {
    
    @State var receiveF: String = "Image"
    @State var receiveN: String = "eu"
    @State var receiveA: String = "incrivel"
    @State var receiveP: String = "incrivel"
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        ZStack{
            Color("Color").ignoresSafeArea()
            
            VStack {
                Image(receiveF)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 200)
            }
            
        }
        .onAppear() {
            viewModel.fetch()
        } // serve para forcar a aparecer aqui, chamando a funcao fetch
       
    }
    
}

#Preview {
    Especific()
}
