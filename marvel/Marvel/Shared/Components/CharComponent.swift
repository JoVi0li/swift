//
//  CharComponent.swift
//  Marvel
//
//  Created by João Vitor Oliveira da Silva on 01/02/23.
//

import SwiftUI
import Foundation
import AVFoundation

struct CharComponent: View {
    let name: String
    let alterEgo: String
    let image: String

    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(image)
                .resizable()
            
            LinearGradient(gradient: Gradient(colors: [Colors.White.opacity(0.05), Colors.Black]), startPoint: UnitPoint(x: 0.5, y: 0.1), endPoint: UnitPoint(x: 0.5, y: 1))
            
            VStack(alignment: .leading) {
                Text(alterEgo)
                    .font(.custom("gilroy-medium", size: 10.0))
                    .foregroundColor(Colors.White)
                Text(name)
                    .font(.custom("gilroy-heavy", size: 20.0))
                    .foregroundColor(Colors.White)
                    
            }
            .padding()

        }
        .frame(width: 140, height: 230)
        .cornerRadius(16.0)
        .padding(.leading, 16)
        
    }
}

struct CharComponent_Previews: PreviewProvider {
    static var previews: some View {
        CharComponent(name: "Homem aranha", alterEgo: "Peter Parker", image: "spider-man")
    }
}
