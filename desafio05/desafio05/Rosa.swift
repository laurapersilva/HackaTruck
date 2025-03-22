//
//  Rosa.swift
//  desafio05
//
//  Created by Turma02-28 on 21/03/25.
//


import SwiftUI

struct Rosa: View {
    var body: some View {
        ZStack {
            Color(.systemPink).edgesIgnoringSafeArea(.top)
            VStack {
                Image(systemName: "house.fill")
                    .font(.system(size: 180))
            }
        }
    }
}

#Preview {
    Rosa()
}

