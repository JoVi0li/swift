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


    var body: some View {
        ZStack(alignment: .custom) {
            Image("spider-man")
                .resizable()
            
            LinearGradient(gradient: Gradient(colors: [Colors.White.opacity(0.1), Colors.Black]), startPoint: UnitPoint(x: 0.5, y: 0.1), endPoint: UnitPoint(x: 0.5, y: 1))
            VStack(alignment: .leading) {
                Text("Peter Parker")
                    .font(.custom("gilroy-medium", size: 10.0))
                    .foregroundColor(Colors.White)
                Text("Homem Aranha")
                    .font(.custom("gilroy-heavy", size: 20.0))
                    .foregroundColor(Colors.White)
            }
            .alignmentGuide(HorizontalAlignment.custom) {
                d in d[.bottom]
            }
            .alignmentGuide(VerticalAlignment.custom) {
                d in d[.bottom]
            }
        }
        .frame(width: 140, height: 230)
        .cornerRadius(16.0)
        
    }
}

extension HorizontalAlignment {
    enum Custom: AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            d[HorizontalAlignment.center]
        }
    }
    static let custom = HorizontalAlignment(Custom.self)
}
extension VerticalAlignment {
    enum Custom: AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            d[VerticalAlignment.center]
        }
    }
    static let custom = VerticalAlignment(Custom.self)
}
extension Alignment {
    static let custom = Alignment(horizontal: .custom,
                                  vertical: .custom)
}

struct CharComponent_Previews: PreviewProvider {
    static var previews: some View {
        CharComponent()
    }
}
