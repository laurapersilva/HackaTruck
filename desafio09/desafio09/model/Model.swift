//
//  Model.swift
//  desafio09
//
//  Created by Turma02-28 on 29/03/25.
//

import Foundation

struct Rebimbocas: Decodable, Hashable {
    let nome: String?
    let idade: Int?
    let tipoPoder: [String]?
 //   let poder: Poder
    let img: String?
}

//struct Poder: Codable, Hashable {
//    let nomePoder: String?
//    let dano: Int?
//    let descricao: String?
//}
