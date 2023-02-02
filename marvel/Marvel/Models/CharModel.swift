//
//  CharFileModel.swift
//  Marvel
//
//  Created by João Vitor Oliveira da Silva on 02/02/23.
//

import Foundation

struct CharModel: Decodable {
    let name: String
    let alterEgo: String
    let imagePath: String
    let biography: String

    let abilities: [String: Int]
    let movies: [String]
    
    enum CodingKeys: CodingKey {
        case name
        case alterEgo
        case imagePath
        case biography

        case movies
        case abilities
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.alterEgo = try container.decode(String.self, forKey: .alterEgo)
        self.imagePath = try container.decode(String.self, forKey: .imagePath)
        self.biography = try container.decode(String.self, forKey: .biography)
        self.movies = try container.decode([String].self, forKey: .movies)
        self.abilities = try container.decode([String: Int].self, forKey: .abilities)
    }
}
