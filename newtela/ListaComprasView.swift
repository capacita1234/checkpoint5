//
//  ListaComprasView.swift
//  newtela
//
//  Created by iredefbmac_40 on 05/08/25.
//

import SwiftUI

struct ListaComprasView: View {
    var body: some View {
        NavigationStack{
            VStack(spacing: 16) {
                
                
                Text("Listas de Compras")
                    .font(.title2)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    TextField("Search", text: .constant(""))
                }
                .padding(10)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal)
                
                
                ScrollView {
                    VStack(spacing: 12) {
                        ListaItemView(cor: .red, icone: "hammer", titulo: "Título", descricao: "Descrição")
                        ListaItemView(cor: .yellow, icone: "creditcard", titulo: "Título", descricao: "Descrição")
                        ListaItemView(cor: .orange, icone: "barcode", titulo: "Título", descricao: "Descrição")
                        ListaItemView(cor: .green, icone: "cart", titulo: "Título", descricao: "Descrição")
                        ListaItemView(cor: .pink, icone: "house", titulo: "Título", descricao: "Descrição")
                    }
                    .padding(.horizontal)
                    .padding(.top, 5)
                }
                
                NavigationLink{
                    CriarLista()
                } label:{
                    HStack{
                        Text("Criar Lista")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(12)
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 5)
                    
                }
              
                
                
            }
        } }
}

