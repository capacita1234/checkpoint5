//
//  ListaComprasView.swift
//  newtela
//
//  Created by iredefbmac_40 on 05/08/25.
//

import SwiftUI

struct ListaComprasView: View {
    @State private var listas: [Lista] = [
        Lista(titulo: "Ferramentas", descricao: "Itens para conserto", cor: .red, icone: "hammer"),
        Lista(titulo: "Frutas", descricao: "Frutas do mercado", cor: .yellow, icone: "pencil"),
        Lista(titulo: "Mercado", descricao: "Compras semanais", cor: .green, icone: "cart")
    ]
    
    var body: some View {
        NavigationStack {
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
                        ForEach(listas) { lista in
                            ListaItemView(cor: lista.cor, icone: lista.icone, titulo: lista.titulo, descricao: lista.descricao)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top, 5)
                }
                
                
                NavigationLink {
                    CriarLista(listas: $listas)
                } label: {
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
    }
}
