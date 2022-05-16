//
//  HeroDetail.swift
//  Superheroes
//
//  Created by GiN Eugene on 16/5/2022.
//

import SwiftUI

struct HeroDetail: View {
    @EnvironmentObject var modelData: ModelData
    var superhero: Superhero
    
    var superheroIndex: Int {
        modelData.superheroes.firstIndex(where: { $0.id == superhero.id })!
    }
    
    var body: some View {
        ScrollView {
            HerosImage(image: superhero.image)
                .padding()

                VStack(alignment: .leading) {
                    HStack {
                        Text(superhero.superhero)
                            .font(.title)
                        FavoriteButton(isSet: $modelData.superheroes[superheroIndex].isFavorite)
                    }
                    HStack {
                        Text("Alter ego: \(superhero.alter_ego)")
                        Spacer()
                        Text(superhero.publisher)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                    Divider()
                        .background()
                    
                    Text("About \(superhero.superhero)")
                        .font(.title2)
                    Text(superhero.description)
                }
            .padding()
            
        }
        .navigationTitle(superhero.superhero)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct HeroDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        HeroDetail(superhero: modelData.superheroes[1])
            .environmentObject(modelData)
    }
}
