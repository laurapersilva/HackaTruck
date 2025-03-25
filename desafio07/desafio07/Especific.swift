//
//  Especific.swift
//  desafio07
//
//  Created by Turma02-28 on 24/03/25.
//

import SwiftUI

struct Especific: View {
    
    @State var receiveF: String = "ABC"
    @State var receiveN: String = "eu"
    @State var receiveA: String = "incrivel"
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.green, .black], startPoint: .top, endPoint: .center)
                .ignoresSafeArea()
            VStack{
                VStack{
                    Image("ABC")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Rectangle())
                        .frame(width: 200, height: 300)
                    Text(receiveN)
                        .foregroundStyle(.white)
                        .font(.title)
                    Text(receiveA)
                        .foregroundStyle(.white)
                        .font(.subheadline)
                }.padding()
                
                HStack{
                    Image(systemName: "shuffle")
                        .foregroundStyle(.white)
                        .font(.system(size: 40))
                    Image(systemName: "backward.end.fill")
                        .foregroundStyle(.white)
                        .font(.system(size: 40))
                    Image(systemName: "play.fill")
                        .foregroundStyle(.white)
                        .font(.system(size: 40))
                    Image(systemName: "forward.end.fill")
                        .foregroundStyle(.white)
                        .font(.system(size: 40))
                    Image(systemName: "repeat")
                        .foregroundStyle(.white)
                        .font(.system(size: 40))
                }
            }
            
        }
    }
}

#Preview {
    Especific()
}
