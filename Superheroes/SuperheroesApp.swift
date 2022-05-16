//
//  SuperheroesApp.swift
//  Superheroes
//
//  Created by GiN Eugene on 16/5/2022.
//

import SwiftUI

@main
struct SuperheroesApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
