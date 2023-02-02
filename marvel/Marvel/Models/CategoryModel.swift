//
//  CategoryModel.swift
//  Marvel
//
//  Created by João Vitor Oliveira da Silva on 01/02/23.
//

import Foundation
import SwiftUI

struct CategoryModel: Identifiable {
    let id: UUID
    let colorTop: Color
    let colorBottom: Color
    let image: String
    
    init(id: UUID = UUID(), colorTop: Color, colorBottom: Color, image: String) {
        self.id = id
        self.colorTop = colorTop
        self.colorBottom = colorBottom
        self.image = image
    }
}

extension CategoryModel {
    static let categories: [CategoryModel] = [
        CategoryModel(colorTop: Colors.BlueGradTop, colorBottom: Colors.BlueGradBottom, image: "hero"),
        CategoryModel(colorTop: Colors.RedGradTop, colorBottom: Colors.RedGradBottom, image: "villain"),
        CategoryModel(colorTop: Colors.PurpleGradTop, colorBottom: Colors.PurpleGradBottom, image: "antihero"),
        CategoryModel(colorTop: Colors.GreenGradTop, colorBottom: Colors.GreenGradBottom, image: "alien"),
        CategoryModel(colorTop: Colors.PinkGradTop, colorBottom: Colors.PinkGradBottom, image: "human")
    ]
}

extension CategoryModel {
    struct Json: Decodable {
        let heroes: [CharModel]
        let villains: [CharModel]
        let antiHeroes: [CharModel]
        let aliens: [CharModel]
        let humans:[CharModel]
        
        enum CodingKeys: CodingKey {
            case heroes
            case villains
            case antiHeroes
            case aliens
            case humans
        }
        
        init(from decoder: Decoder) throws {
            let container: KeyedDecodingContainer<CategoryModel.Json.CodingKeys> = try decoder.container(keyedBy: CategoryModel.Json.CodingKeys.self)
            self.heroes = try container.decode([CharModel].self, forKey: CategoryModel.Json.CodingKeys.heroes)
            self.villains = try container.decode([CharModel].self, forKey: CategoryModel.Json.CodingKeys.villains)
            self.antiHeroes = try container.decode([CharModel].self, forKey: CategoryModel.Json.CodingKeys.antiHeroes)
            self.aliens = try container.decode([CharModel].self, forKey: CategoryModel.Json.CodingKeys.aliens)
            self.humans = try container.decode([CharModel].self, forKey: CategoryModel.Json.CodingKeys.humans)
        }
        
    }

}

extension CategoryModel {
    static func readApplicationFile(forName name: String) -> Data? {
       do {
           if let bundlePath = Bundle.main.path(forResource: name, ofType: "json"),
              let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
               return jsonData
           }
       } catch {
           print(error)
       }
       return nil
   }
   
    static func parse(jsonData: Data) -> CategoryModel.Json?  {
       do {
           var chars = try JSONDecoder().decode(CategoryModel.Json.self, from: jsonData)
           
           return chars
           
       } catch {
           print(error)
       }
        return nil
   }
}
