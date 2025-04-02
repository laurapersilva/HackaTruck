//
//  ViewModel.swift
//  desafio08
//
//  Created by Turma02-28 on 26/03/25.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var personagens: [HaPo] = []
    
    func fetch() {
        //pega a url da json
        guard let url = URL(string: "https://hp-api.onrender.com/api/characters/house/gryffindor") else {
            return
        }
            
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error 
            in
            guard let data = data, error == nil else {
                return
            }
            
            do { //tentar decodificar
                let parsed = try JSONDecoder().decode([HaPo].self, from: data)
                
                //para ordernar esse processo
                DispatchQueue.main.async {
                    self?.personagens = parsed
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
