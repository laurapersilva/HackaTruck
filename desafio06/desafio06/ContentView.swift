//
//  ContentView.swift
//  desafio06
//
//  Created by Turma02-28 on 21/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack {
                Color(.black).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .font(.system(size: 10))
                    
                    Spacer()
                    
                    VStack {
                        NavigationLink(destination: Tela1()) {
                            ZStack{
                                Text("Modo 1")
                                    .frame(width:200, height:90)
                                    .background(Color.red)
                                    .foregroundStyle(.white)
                                    .cornerRadius(10)
                            }
                            .padding()
                        }
                        
                        
                        NavigationLink(destination: Tela2()) {
                            Text("Modo 2")
                                .foregroundStyle(.white)
                                .frame(width:200, height:90)
                                .background(Color.red)
                                .cornerRadius(10)
                        }

                        //Button(action: {
                            //NavigationLink(destination: Tela3())})
                         
                            // Text("Modo 3")
                                // .foregroundStyle(.white)
                                // .frame(width:200, height:90)
                                // .background(Color.red)
                                // .cornerRadius(10)
                                                        }
                        
                    
                    
                    Spacer()
                    
                    
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
