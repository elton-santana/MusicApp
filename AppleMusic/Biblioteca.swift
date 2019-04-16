//
//  Biblioteca.swift
//  AppleMusic
//
//  Created by Elton Santana on 16/04/19.
//  Copyright © 2019 Memo. All rights reserved.
//

import Foundation
import UIKit

enum Genero: String, CaseIterable {
    case ecletico = "Eclético"
    case axe = "Axé"
    case MPB = "MPB"
    case brega = "Brega"
}

let artistas = [
    Artista(nome: "Leo Santana", foto: #imageLiteral(resourceName: "leo"), naturalidade: "Bahia"),
    Artista(nome: "Alceu Valença", foto: #imageLiteral(resourceName: "alci"), naturalidade: "Pernambuco"),
    Artista(nome: "Reginaldo Rossi", foto: #imageLiteral(resourceName: "regi"), naturalidade: "Pernambuco"),
    Artista(nome: "Psirico", foto: UIImage(named: "psi")!, naturalidade: "Bahia")
]

let musicas = [
    Musica(nome: "Tchubirabiron", genero: .axe, artista: artistas[0]),
    Musica(nome: "La belle dejour", genero: .MPB, artista: artistas[1]),
    Musica(nome: "Popa da bunda", genero: .axe, artista:  artistas[3]),
    Musica(nome: "Raposa e as Uvas", genero: .brega, artista: artistas[2]),
    Musica(nome: "Dama de vermelho", genero: .brega, artista: artistas[2]),
    Musica(nome: "Recife minha cidade", genero: .brega, artista: artistas[2])
]
