//
//  SuperheroRow.swift
//  Superheroes
//
//  Created by GiN Eugene on 16/5/2022.
//

import SwiftUI

struct SuperheroRow: View {
    var superhero: Superhero
    
    var body: some View {
        HStack {
            superhero.image
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50, alignment: .top)
                .cornerRadius(4)
                .clipped()
            Text(superhero.superhero)
            
            Spacer()
            
            if superhero.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct SuperheroRow_Previews: PreviewProvider {
    static var superheroes = ModelData().superheroes
    
    static var previews: some View {
        Group {
            SuperheroRow(superhero: superheroes[0])
            SuperheroRow(superhero: superheroes[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
