//
//  ProdutosView.swift
//  newtela
//
//  Created by iredefbmac_40 on 05/08/25.
//


import SwiftUI

struct ProdutosView: View {
    @State private var produtos: [Produto] = [
        Produto(titulo: "Maçã", preco: "R$ 0,50", descricao: "Fruta", imagem: UIImage(named: "maca")),
        Produto(titulo: "Melancia", preco: "R$ 00,00", descricao: "Fruta", imagem: UIImage(named: "melancia")),
        Produto(titulo: "Abacaxi", preco: "R$ 00,00", descricao: "Fruta", imagem: UIImage(named: "abacaxi")),
        Produto(titulo: "Sabonete", preco: "R$ 00,00", descricao: "Limpeza", imagem: UIImage(named: "sabonete"))
    ]
    
    @State private var mostrarAdicionarProduto = false
    
    let colunas = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    LazyVGrid(columns: colunas, spacing: 16) {
                        ForEach(produtos) { produto in
                            VStack(alignment: .leading, spacing: 8) {
                                if let imagem = produto.imagem {
                                    Image(uiImage: imagem)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(height: 100)
                                        .clipped()
                                        .cornerRadius(8)
                                } else {
                                    Rectangle()
                                        .fill(Color.gray.opacity(0.3))
                                        .frame(height: 100)
                                        .cornerRadius(8)
                                        .overlay(
                                            Image(systemName: "photo")
                                                .foregroundColor(.gray)
                                        )
                                }
                                
                                Text(produto.titulo)
                                    .font(.headline)
                                
                                Text(produto.descricao)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                
                                Text(produto.preco)
                                    .font(.subheadline)
                                    .bold()
                                
                                Spacer()
                            }
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(12)
                        }
                    }
                    .padding()
                }
                
                Button {
                    mostrarAdicionarProduto = true
                } label: {
                    Text("Adicionar Produto")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(12)
                }
                .padding()
            }
            .navigationTitle("Meus Produtos")
            .sheet(isPresented: $mostrarAdicionarProduto) {
                AdicionarProdutoView(produtos: $produtos)
            }
        }
    }
}

