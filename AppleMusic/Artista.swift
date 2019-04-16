//
//  Artista.swift
//  AppleMusic
//
//  Created by Elton Santana on 16/04/19.
//  Copyright © 2019 Memo. All rights reserved.
//

import Foundation
import UIKit

class Artista {
    var nome: String
    var foto: UIImage
    var naturalidade: String
    
    init(nome: String, foto: UIImage, naturalidade: String) {
        self.naturalidade = naturalidade
        self.foto = foto
        self.nome = nome
    }
}


