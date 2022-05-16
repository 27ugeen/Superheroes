//
//  HerosImage.swift
//  Superheroes
//
//  Created by GiN Eugene on 16/5/2022.
//

import SwiftUI

struct HerosImage: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .scaledToFill()
            .frame(width: 350, height: 300, alignment: .top)
            .cornerRadius(4)
            .clipped()
    }
}

struct HerosImage_Previews: PreviewProvider {
    static var previews: some View {
        HerosImage(image: Image("superman"))
    }
}
