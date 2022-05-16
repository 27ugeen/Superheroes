//
//  SuperheroList.swift
//  Superheroes
//
//  Created by GiN Eugene on 16/5/2022.
//

import SwiftUI

struct SuperheroList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = true
    
    var filteredSuperheroes: [Superhero] {
        modelData.superheroes.filter { superhero in
            (!showFavoritesOnly || superhero.isFavorite)
            
        }
    }
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                .tint(.yellow)
                
                ForEach(filteredSuperheroes) { superhero in
                    NavigationLink {
                        HeroDetail(superhero: superhero)
                    } label: {
                        SuperheroRow(superhero: superhero)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Superheroes")
        }
    }
}

struct SuperheroList_Previews: PreviewProvider {
    static var previews: some View {
        SuperheroList()
            .environmentObject(ModelData())
    }
}
