//
//  AdicionarProdutoView.swift
//  newtela
//
//  Created by iredefbmac_40 on 26/08/25.
//

import SwiftUI
import PhotosUI

struct AdicionarProdutoView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var produtos: [Produto]
    
    @State private var titulo = ""
    @State private var preco = ""
    @State private var descricao = ""
    @State private var imagemSelecionada: PhotosPickerItem?
    @State private var imagem: UIImage?
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                
               /* PhotosPicker(selection: $imagemSelecionada, matching: .images) {
                    VStack {
                        if let imagem = imagem {
                            Image(uiImage: imagem)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 150)
                                .cornerRadius(12)
                        } else {
                            VStack {
                                Image(systemName: "photo.on.rectangle.angled")
                                    .font(.system(size: 40))
                                    .foregroundColor(.gray)
                                Text("Adicionar Imagem")
                                    .foregroundColor(.gray)
                            }
                            .frame(maxWidth: .infinity, minHeight: 150)
                            .background(Color(.systemGray6))
                            .cornerRadius(12)
                        }
                    }
                }*/
               /* .onChange(of: imagemSelecionada) { newItem in
                    Task {
                        if let data = try? await newItem?.loadTransferable(type: Data.self),
                           let uiImage = UIImage(data: data) {
                            imagem = uiImage
                        }
                    }
                }*/
                
                TextField("Título", text: $titulo)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                
                TextField("Preço", text: $preco)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .keyboardType(.decimalPad)
                
                TextField("Descrição", text: $descricao)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                
                Button {
                  /*  let novoProduto = Produto(
                        titulo: titulo,
                        preco: preco,
                        descricao: descricao,
                        imagem: imagem
                    )
                    produtos.append(novoProduto)
                    dismiss()*/
                } label: {
                    Text("Adicionar")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(12)
                }
                .padding(.top, 10)
                
                Spacer()
            }
            .padding()
            .navigationTitle("Adicionar Produto")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Fechar") {
                        dismiss()
                    }
                }
            }
        }
    }
}
