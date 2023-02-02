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
