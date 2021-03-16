//
//  NavigationBarButtonCell.swift
//  E-avtomaktab
//
//  Created by Boburmirzo on 3/15/21.
//

import SwiftUI

struct NavigationBarButtonCell: View {
    var image = "ic_home-nav-active"
    var isActive = false
    var body: some View {
        if isActive {
            Image(image)
                .frame(width: 45, height: 45)
                .background(
                    RoundedRectangle(cornerRadius: 25).stroke(Color.white, lineWidth: 4)
                        .background(Color(hex: "AF9FB5").cornerRadius(25))
                )
        } else {
            Image(image)
                .frame(width: 45, height: 45)
        }
    }
}

struct NavigationBarButtonCell_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarButtonCell()
    }
}
