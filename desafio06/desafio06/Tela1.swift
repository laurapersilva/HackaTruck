//
//  Tela1.swift
//  desafio06
//
//  Created by Turma02-28 on 21/03/25.
//

import SwiftUI

struct Tela1: View {
    var body: some View {
        ZStack{
            Color(.black).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("Modo 1")
                    .foregroundStyle(.white)
            }
            Spacer()
            
            VStack{
                Text("Nome: Laura")
                Text("Sobrenome: Persilva")
            } .frame(width:200, height:200)
                .background(Color(.red))
                .cornerRadius(20.0)
                
            
            
        }
    }
}

#Preview {
    Tela1()
}
