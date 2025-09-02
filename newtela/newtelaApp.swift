//
//  newtelaApp.swift
//  newtela
//
//  Created by iredefbmac_40 on 05/08/25.
//

import SwiftUI
import SwiftData

@main
struct newtelaApp: App {
    var body: some Scene {
        WindowGroup {
        ContentView()
                .modelContainer(for: [Produto.self, Lista.self])
        }
    }
}
