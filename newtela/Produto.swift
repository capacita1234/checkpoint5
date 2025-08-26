//
//  Produto.swift
//  newtela
//
//  Created by iredefbmac_40 on 26/08/25.
//

import SwiftUI

struct Produto: Identifiable {
    let id = UUID()
    var titulo: String
    var preco: String
    var descricao: String
    var imagem: UIImage?
}
