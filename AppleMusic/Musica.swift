//
//  Musica.swift
//  AppleMusic
//
//  Created by Elton Santana on 16/04/19.
//  Copyright © 2019 Memo. All rights reserved.
//

import Foundation

class Musica {
    var nome: String
    var genero: Genero
    var artista: Artista
    
    init(nome: String, genero: Genero, artista: Artista) {
        self.nome = nome
        self.genero = genero
        self.artista = artista
    }
}
