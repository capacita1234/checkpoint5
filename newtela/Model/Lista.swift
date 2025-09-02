//
//  Lista.swift
//  newtela
//
//  Created by iredefbmac_40 on 12/08/25.
//

import SwiftUI
import SwiftData

@Model
class Lista: Identifiable {
    var id = UUID()
    var titulo: String
    var descricao: String
    var cor: ListColor
    var icone: String
    var produtos: [Produto]
    
    init(titulo: String, descricao: String, cor:ListColor, icone:String, produtos: [Produto] = []){
        self.titulo = titulo
        self.descricao = descricao
        self.icone = icone
        self.produtos = produtos
        self.cor = cor
    }
}
    
enum ListColor: String, Codable, CaseIterable{
    case green, blue, pink, red, yellow
    var swiftUIcolor: Color{
        switch self{
        case .green: return .green
        case .blue: return .blue
        case .pink: return .pink
        case .red: return .red
        case .yellow: return .yellow
        }
    }
    
}
