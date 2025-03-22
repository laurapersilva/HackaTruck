//
//  Azul.swift
//  desafio05
//
//  Created by Turma02-28 on 21/03/25.
//

import SwiftUI

struct Azul: View {
    var body: some View {
        ZStack {
            Color(.blue).edgesIgnoringSafeArea(.top)
            VStack {
                Image(systemName: "paintpalette")
                    .font(.system(size: 180))
            }
        }
    }
}

#Preview {
    Azul()
}
