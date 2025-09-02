//
//  Produto.swift
//  newtela
//
//  Created by iredefbmac_40 on 27/08/25.
//

import SwiftData
import SwiftUI
@Model
class Produto : Identifiable {
    var título : String
    var descricao : String
    var preço : Double
    var image : Data
    var id = UUID()
       
    init(título: String, descricao: String, preço: Double, image: Data) {
        self.título = título
        self.descricao = descricao
        self.preço = preço
        self.image = image
        
    }
}
