//
//  Tela2.swift
//  desafio06
//
//  Created by Turma02-28 on 21/03/25.
//

import SwiftUI

struct Tela2: View {
    var body: some View {
        ZStack{
            Color(.black).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("Modo 1")
                    .foregroundStyle(.white)
            }
            
        }
    }
}

#Preview {
    Tela2()
}
