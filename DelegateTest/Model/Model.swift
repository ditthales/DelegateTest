//
//  Model.swift
//  DelegateTest
//
//  Created by ditthales on 29/09/22.
//

import Foundation

struct Model{
    let nome: String
    let idade: Int
    let nacionalidade: String
    let estaEstudando: Bool
}

extension Model{
    static func dados() -> [Model]{
        return [
            Model(
                nome: "Thales",
                idade: 23,
                nacionalidade: "brasileira",
                estaEstudando: true
            ),
            Model(
                nome: "Yaquelín",
                idade: 32,
                nacionalidade: "argentina",
                estaEstudando: true
            ),
            Model(
                nome: "François",
                idade: 44,
                nacionalidade: "francesa",
                estaEstudando: false
            ),
            
        ]
    }
}
