//
//  ContentView.swift
//  Marvel
//
//  Created by João Vitor Oliveira da Silva on 01/02/23.
//

import SwiftUI

struct HomeView: View {
    let categories: [CategoryModel] = CategoryModel.categories
    let chars: CategoryModel.Json
    
    let screenSize: CGRect = UIScreen.main.bounds

    
    init() {
        let data = CategoryModel.readApplicationFile(forName: "application")
        let json = CategoryModel.parse(jsonData: data!)
        chars = json!
    }
    
    var body: some View {
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        VStack {
            AppBarView()
            ScrollView {
                
                
                VStack(alignment: .leading) {
                    Text("Bem vindo ao Marvel Heroes")
                        .font(.custom("gilroy-semibold", size: 14.0))
                        .foregroundColor(Colors.Grey)
                    Text("Escolha o seu\npersonagem")
                        .font(.custom("gilroy-heavy", size: 32.0))
                        .foregroundColor(Colors.Dark)
                }
                .frame(width: screenWidth, alignment: .leading)
                .padding(.bottom, 24)
                .padding(.top, 24)
                .padding(.leading, 16)
            
                
                HStack {
                    ForEach(categories) {category in
                        Spacer()
                        CategoryComponent(colorTop: category.colorTop, colorBottom: category.colorBottom, image: category.image)
                            Spacer()
                        
                    }
                }
                .padding(.leading, 4)
                .padding(.trailing, 4)
                
                
                VStack(alignment: .leading) {
                    CharListHeaderComponent(charListName: "Heróis")
                    
                    ScrollView(.horizontal){
                        HStack {
                            ForEach(chars.heroes, id: \.name) {hero in
                                CharComponent(name: hero.name, alterEgo: hero.alterEgo, image: hero.imagePath)
                            }
                        }
                        .padding(.trailing, 16)
                    }
                }
                .padding(.bottom, 36)
                
                VStack(alignment: .leading) {
                    CharListHeaderComponent(charListName: "Vilões")
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(chars.villains, id: \.name) {villain in
                                CharComponent(name: villain.name, alterEgo: villain.alterEgo, image: villain.imagePath)
                            }
                        }
                        .padding(.trailing, 16)
                    }
                }
                .padding(.bottom, 36)
                
                
                VStack(alignment: .leading) {
                    CharListHeaderComponent(charListName: "Anti-heróis")
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(chars.antiHeroes, id: \.name) {antiHeroe in
                                CharComponent(name: antiHeroe.name, alterEgo: antiHeroe.alterEgo, image: antiHeroe.imagePath)
                            }
                        }
                        .padding(.trailing, 16)
                    }
                }
                .padding(.bottom, 36)
                
                VStack(alignment: .leading) {
                    CharListHeaderComponent(charListName: "Alienígenas")
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(chars.aliens, id: \.name) {alien in
                                CharComponent(name: alien.name, alterEgo: alien.alterEgo, image: alien.imagePath)
                            }
                        }
                        .padding(.trailing, 16)
                    }
                }
                .padding(.bottom, 36)
                
                VStack(alignment: .leading) {
                    CharListHeaderComponent(charListName: "Humano")
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(chars.humans, id: \.name) {human in
                                CharComponent(name: human.name, alterEgo: human.alterEgo, image: human.imagePath)
                            }
                        }
                        .padding(.trailing, 16)
                    }
                }
                .padding(.bottom, 10)
            }
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
