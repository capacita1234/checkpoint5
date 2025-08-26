//
//  Configurações.swift
//  newtela
//
//  Created by iredefbmac_40 on 05/08/25.
//

import SwiftUI

struct Configuracoes: View {
    @AppStorage("idiomaSelecionado") private var idiomaSelecionado = "Português"
    @AppStorage("modoEscuro") private var modoEscuro = false
    @AppStorage("emailUsuario") private var emailUsuario = ""
    
    @State private var mostrarImagePicker = false
    @State private var fotoPerfil: UIImage? = nil
    
    var body: some View {
        NavigationStack {
            Form {
                
                
                Section(header: Text("Foto de Perfil")) {
                    HStack {
                        Spacer()
                        VStack {
                            if let foto = fotoPerfil {
                                Image(uiImage: foto)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 100, height: 100)
                                    .clipShape(Circle())
                            } else {
                                Image(systemName: "person.crop.circle.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(.gray)
                            }
                            
                            Button("Escolher Foto") {
                                mostrarImagePicker = true
                            }
                            .padding(.top, 5)
                        }
                        Spacer()
                    }
                }
                
               
                Section(header: Text("Idioma")) {
                    Picker("Idioma", selection: $idiomaSelecionado) {
                        Text("Português").tag("Português")
                        Text("Inglês").tag("Inglês")
                        Text("Espanhol").tag("Espanhol")
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
               
                Section(header: Text("Tema")) {
                    Toggle(isOn: $modoEscuro) {
                        Label("Modo Escuro", systemImage: modoEscuro ? "moon.fill" : "sun.max.fill")
                    }
                }
                
                
                Section(header: Text("E-mail")) {
                    TextField("Digite seu e-mail", text: $emailUsuario)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                }
            }
            .navigationTitle("Configurações")
            .sheet(isPresented: $mostrarImagePicker) {
                ImagePicker(imagemSelecionada: $fotoPerfil)
            }
        }
        .preferredColorScheme(modoEscuro ? .dark : .light) // muda o tema
    }
}


