//
//  IntranceStaticsCell.swift
//  E-avtomaktab
//
//  Created by Boburmirzo on 3/17/21.
//

import SwiftUI

struct IntranceStaticsCell: View {
    var title = "AVTOMAKTABLAR"
    var no = "678"
    var body: some View {
        VStack(spacing: 10){
            HStack{
                Text(title).font(.caption2).fontWeight(.bold)
            }
            Text(no).fontWeight(.bold)
        }.frame(width: 120, height: 120).padding().background(Color(hex: "E4C2F2").cornerRadius(15))
    }
}

struct IntranceStaticsCell_Previews: PreviewProvider {
    static var previews: some View {
        IntranceStaticsCell()
    }
}
