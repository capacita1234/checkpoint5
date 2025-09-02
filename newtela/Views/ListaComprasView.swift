//
//  ListaComprasView.swift
//  newtela
//
//  Created by iredefbmac_40 on 05/08/25.
//

import SwiftUI
import SwiftData

struct ListaComprasView: View {
    @Environment(\.modelContext) var context
    @ObservedObject var listaViewModel = ListViewModel.shared
    @State private var mostrarsheetCriarLista: Bool = false
    @State private var textoPesquisa: String = ""
    @Environment(\.dismiss) var dismiss
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
                     /*   ForEach(listaViewModel.listas) { lista in
                            ListaItemView(cor: lista.cor.swiftUIcolor, icone: lista.icone, titulo: lista.titulo, descricao: lista.descricao)
                        }*/
                    }
                    .padding(.horizontal)
                    .padding(.top, 5)
                }
                
                
                NavigationLink {
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
                
                Button(action: {
                   // listaViewModel.CriarLista(titulo:titulo, descricao: descricao, icone: "newOrange", cor:corSelecionada)
                    dismiss()
                })  {
                    Text("Salvar Lista")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(12)
                }
                .padding(.horizontal)
            }
        }
        .onAppear{
            listaViewModel.buscarListas(context: context)
        }
    }
        
}
