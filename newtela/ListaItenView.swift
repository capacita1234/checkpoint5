//
//  Lista.swift
//  newtela
//
//  Created by iredefbmac_40 on 05/08/25.
//

import SwiftUI


struct ListaItemView: View {
    var cor: Color
    var icone: String
    var titulo: String
    var descricao: String
    
    var body: some View {
        HStack {
            Rectangle()
                .fill(cor)
                .frame(width: 6)
                .cornerRadius(3)
            
            HStack(spacing: 12) {
                Image(systemName: icone)
                    .font(.title3)
                    .frame(width: 30, height: 30)
                
                VStack(alignment: .leading, spacing: 2) {
                    Text(titulo)
                        .font(.headline)
                    Text(descricao)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                
                Spacer()
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 10)
            .background(Color.white)
            .cornerRadius(8)
            .shadow(color: Color.black.opacity(0.1), radius: 3, x: 0, y: 2)
        }
    }
}

