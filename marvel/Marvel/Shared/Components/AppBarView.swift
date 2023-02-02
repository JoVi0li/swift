//
//  AppBarView.swift
//  Marvel
//
//  Created by João Vitor Oliveira da Silva on 01/02/23.
//

import SwiftUI

struct AppBarView: View {
    var body: some View {
        HStack {
            Menu() {
                Text("opa")
            } label: {
                Image("menu")
            }
            Spacer()
            Image("marvel")
            Spacer()
            Image("search")
        }
        .padding()
        
    }
}

struct AppBarView_Previews: PreviewProvider {
    static var previews: some View {
        AppBarView()
    }
}
