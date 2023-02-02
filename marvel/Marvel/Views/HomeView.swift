//
//  ContentView.swift
//  Marvel
//
//  Created by João Vitor Oliveira da Silva on 01/02/23.
//

import SwiftUI

struct HomeView: View {
    let categories: [CategoryModel] = CategoryModel.categories
    var body: some View {
        ScrollView {
            VStack {
                AppBarView()
                    .padding(.bottom, 24)
                HStack {
                    VStack {
                        Text("Bem vindo ao Marvel Heroes")
                            .font(.custom("gilroy-semibold", size: 14.0))
                            .foregroundColor(Colors.Grey)
                        Text("Escolha o seu personagem")
                            .font(.custom("gilroy-heavy", size: 32.0))
                            .foregroundColor(Colors.Dark)
                    }
                    Spacer()
                }
                .padding(.bottom, 32)
                
                HStack {
                    ForEach(categories) {category in
                        CategoryComponent(colorTop: category.colorTop, colorBottom: category.colorBottom, image: category.image)
                        Spacer()
                    }
                }
                
                Section(
                    header: Text("Heróis")
                        .font(.custom("gilroy-bold", size: 18.0))
                        .foregroundColor(Colors.Red)){
                    
                }
                
            }
            .padding()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
