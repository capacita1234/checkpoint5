//
//  CriarListaView.swift
//  newtela
//
//  Created by iredefbmac_40 on 29/08/25.
//

import SwiftUI
import SwiftData

struct CriarListaView: View{
    @Environment(\.modelContext) var context
    @ObservedObject var listaViewModel = ListViewModel.shared
    @State private var titulo: String = ""
    @State private var descricao: String = ""
    @State private var icone: String = ""
    @State private var corSelecionada: ListColor
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button(action:{
                listaViewModel.CriarLista(titulo:titulo, descricao: descricao,cor:corSelecionada, icone: "newOrange")
                dismiss()
            })  {
                Text("Salvar Lista")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(12)
            }
               .padding(.horizontal)    }
    
    }
