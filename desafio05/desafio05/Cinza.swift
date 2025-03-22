//
//  Cinza.swift
//  desafio05
//
//  Created by Turma02-28 on 21/03/25.
//

import SwiftUI

struct Cinza: View {
    var body: some View {
        ZStack {
            Color(.orange).edgesIgnoringSafeArea(.top)
            VStack {
                Image(systemName: "paperplane")
                    .font(.system(size: 180))
            }
        }
    }
}

#Preview {
    Cinza()
}
