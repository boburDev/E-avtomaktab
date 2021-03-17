//
//  IntranceFuncCell.swift
//  E-avtomaktab
//
//  Created by Boburmirzo on 3/16/21.
//

import SwiftUI

struct IntranceFuncCell: View {
    var image = "rectangle.fill"
    var text = "Ko'p Tilliklar"
    var body: some View {
        HStack(spacing: 15){
            Image(systemName: image)
                .resizable()
                .frame(width: 40, height: 40)
            Text(text).foregroundColor(Color(hex: "4F335A")).font(.title3)
        }
        .padding()
        .background(Color(hex: "E4C2F2"))
        
    }
}

struct IntranceFuncCell_Previews: PreviewProvider {
    static var previews: some View {
        IntranceFuncCell()
    }
}
