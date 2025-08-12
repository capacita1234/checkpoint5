//
//  CriarLista.swift
//  newtela
//
//  Created by iredefbmac_40 on 05/08/25.
//

import SwiftUI

struct CriarLista: View {
    @Binding var listas: [Lista]
    @State private var titulo: String = ""
    @State private var descricao: String = ""
    @State private var corSelecionada: Color = .blue
    
    let coresDisponiveis: [Color] = [.red, .yellow, .orange, .green, .blue, .pink, .purple]
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 16) {
            
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                TextField("Pesquisar", text: .constant(""))
            }
            .padding(10)
            .background(Color(.systemGray6))
            .cornerRadius(8)
            .padding(.horizontal)
            
           
            TextField("Nome da Lista", text: $titulo)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal)
            
            
            TextField("Descrição", text: $descricao)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal)
            
           
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(coresDisponiveis, id: \.self) { cor in
                        Circle()
                            .fill(cor)
                            .frame(width: 40, height: 40)
                            .overlay(
                                Circle()
                                    .stroke(corSelecionada == cor ? Color.black : Color.clear, lineWidth: 3)
                            )
                            .onTapGesture {
                                corSelecionada = cor
                            }
                    }
                }
                .padding(.horizontal)
            }
            
            
            Button(action: {
                let novaLista = Lista(titulo: titulo, descricao: descricao, cor: corSelecionada, icone: "cart")
                listas.append(novaLista)
                dismiss() 
            }) {
                Text("Salvar Lista")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(12)
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .navigationTitle("Nova Lista")
    }
}

