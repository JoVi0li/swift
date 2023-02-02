//
//  CategoryComponent.swift
//  Marvel
//
//  Created by João Vitor Oliveira da Silva on 01/02/23.
//

import SwiftUI

struct CategoryComponent: View {
    let colorTop: Color
    let colorBottom: Color
    let image: String
    var body: some View {
        ZStack(alignment: .center) {
            Circle()
            .fill(LinearGradient(gradient: Gradient(colors: [colorTop, colorBottom]), startPoint: UnitPoint(x: 0.5, y: 0.1), endPoint: UnitPoint(x: 0.5, y: 1)))
            .frame(width: 56, height: 56, alignment: .center)
            Image(image)
                
        }
        
        
    }
}

struct CategoryComponent_Previews: PreviewProvider {
    static var previews: some View {
        CategoryComponent(colorTop: Colors.BlueGradTop, colorBottom: Colors.BlueGradBottom, image: "hero")
    }
}
