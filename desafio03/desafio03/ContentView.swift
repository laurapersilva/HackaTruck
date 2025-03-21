//
//  ContentView.swift
//  desafio03
//
//  Created by Turma02-28 on 20/03/25.
//

import SwiftUI

struct ContentView: View {
    @State private var distancia = 0.0
    @State private var tempo = 0.0
    @State private var velocidade = 0.0
    
    private let animais = ["TARTARUGA", "ELEFANTE", "AVESTRUZ", "LEAO", "GUEPARDO"]
    private let velocidades = ["0 - 9,9km/h", "10 - 29,9km/h", "30 - 69,9km/h", "70 - 89.9km/h", "90 - 130km/h"]
    private let cores: [Color] = [.Tortuga, .Elofante, .Vestruz, .Lion, .Lepard]
    private let fotos = ["tartaruga", "elefante", "avestruz", "leao", "guepardo"]
    
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Digite a distancia:")
                .padding()
            TextField("", value: $distancia, format: .number)
                .textFieldStyle(.roundedBorder)
                .background(Color.white)
                .multilineTextAlignment(.center)
            
            Text("Digite o tempo:")
                .padding()
            TextField("", value: $tempo, format: .number)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
                .cornerRadius(30.0)
                .background(Color.white)
            
            Button(action: {
                print("Calculando")
            }){
                HStack {
                    Text("Calcular")
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.black)
                .cornerRadius(30)
            } .padding(10)
            Spacer()
            
            Image("inte")
                .resizable()
                .scaledToFit()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .padding()
            
            Spacer()
            
            HStack {
                Spacer()
                
                VStack{
                    Text("TARTARUGA (0 - 9.9km/h)")
                    Text("ELEFANTE (10 - 29.9km/h)")
                    Text("AVESTRUZ (30 - 69.9km/h)")
                    Text("LEAO (70 - 89.9km/h)")
                    Text("GUEPARDO (90 - 130km/h)")
                }
                .background(Color.black)
                .foregroundStyle(.white)
                .cornerRadius(5.0)
                
                Spacer()
            }
            
            
        }
        .padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 50)).background(Color.gray)
    }
    
    
}

#Preview {
    ContentView()
}
