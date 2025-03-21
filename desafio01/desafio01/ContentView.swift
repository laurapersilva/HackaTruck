//
//  ContentView.swift
//  desafio01
//
//  Created by Turma02-28 on 20/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .foregroundStyle(.red)
                    .frame(width:100, height: 100)
                    .padding()
                
                Spacer()
                Rectangle()
                    .foregroundStyle(.blue)
                    .frame(width:100, height: 100)
                    .padding()
                
            }
            Spacer()
            HStack {
                Rectangle()
                    .foregroundStyle(.green)
                    .frame(width:100, height: 100)
                    .padding()
                
                Spacer()
                Rectangle()
                    .foregroundStyle(.yellow)
                    .frame(width:100, height: 100)
                    .padding()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
