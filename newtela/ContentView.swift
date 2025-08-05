//
//  ContentView.swift
//  newtela
//
//  Created by iredefbmac_40 on 05/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Tab("Listas", systemImage:"list.bullet"){
                ListaComprasView()
            }
            Tab("Produtos", systemImage:"bag"){
                ProdutosView()
            }
            Tab("configurações", systemImage:"gearshape"){
               Configuracoes()
            }
                
            
        }
    }
}


