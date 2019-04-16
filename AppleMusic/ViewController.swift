//
//  ViewController.swift
//  AppleMusic
//
//  Created by Elton Santana on 16/04/19.
//  Copyright © 2019 Memo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var fotoImageView: UIImageView!
    @IBOutlet weak var musicaLabel: UILabel!
    @IBOutlet weak var artistaLabel: UILabel!
    @IBOutlet weak var generoLabel: UILabel!
    @IBOutlet weak var naturalidadeLabel: UILabel!
    @IBOutlet weak var generoSegmentedControl: UISegmentedControl!
    
    var musicasFiltradas: [Musica] = musicas
    
    var indice: Int = 0 {
        didSet {
            self.atualizarTela()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let generos = Genero.allCases
        self.generoSegmentedControl.removeAllSegments()
        
        for (index,genero) in generos.enumerated() {
            self.generoSegmentedControl.insertSegment(withTitle: genero.rawValue, at: index, animated: true)
        }
        self.generoSegmentedControl.selectedSegmentIndex = 0
        self.atualizarTela()

        
        
    }
    
    func atualizarTela() {
        let musicaAtual = self.musicasFiltradas[self.indice]
        self.fotoImageView.image = musicaAtual.artista.foto
        self.artistaLabel.text = musicaAtual.artista.nome
        self.naturalidadeLabel.text = musicaAtual.artista.naturalidade
        self.generoLabel.text = musicaAtual.genero.rawValue
        self.musicaLabel.text = musicaAtual.nome

    }

    @IBAction func irPraAnterior(_ sender: UIButton) {
        if indice == 0 {
            indice = musicasFiltradas.count - 1
        } else {
            indice -= 1
        }
    }
    
    @IBAction func irPraProxima(_ sender: UIButton) {
        if indice == musicasFiltradas.count - 1 {
            indice = 0
        } else {
            indice += 1
        }
    }
    
    @IBAction func clicouEmUmSegmento(_ sender: UISegmentedControl) {
        let indiceSelecionado = sender.selectedSegmentIndex
        let generoSelecionado = Genero.allCases[indiceSelecionado]
        if generoSelecionado == .ecletico {
            self.musicasFiltradas = musicas
        } else {
            self.musicasFiltradas = musicas.filter({ (musica) -> Bool in
                return musica.genero == generoSelecionado
            })
        }
        indice = 0
    }
    
}

