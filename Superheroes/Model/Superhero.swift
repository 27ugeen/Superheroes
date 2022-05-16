//
//  Superhero.swift
//  Superheroes
//
//  Created by GiN Eugene on 16/5/2022.
//

import Foundation
import SwiftUI

struct Superhero: Hashable, Codable, Identifiable {
    var id: Int
    var superhero: String
    var alter_ego: String
    var publisher: String
    var description: String
    var isFavorite: Bool
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
