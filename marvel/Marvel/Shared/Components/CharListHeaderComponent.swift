//
//  CharListHeaderComponent.swift
//  Marvel
//
//  Created by João Vitor Oliveira da Silva on 02/02/23.
//

import SwiftUI

struct CharListHeaderComponent: View {
    let charListName: String
    var body: some View {
        HStack {
            Text(charListName)
                .font(.custom("gilroy-bold", size: 18.0))
                .foregroundColor(Colors.Red)
            Spacer()
            Text("Ver tudo")
                .font(.custom("gilroy-medium", size: 14.0))
                .foregroundColor(Colors.Grey)
        }
        .padding()
    }
}

struct CharListHeaderComponent_Previews: PreviewProvider {
    static var previews: some View {
        CharListHeaderComponent(charListName: "Heróis")
    }
}
