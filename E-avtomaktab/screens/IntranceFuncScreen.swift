//
//  IntranceFuncScreen.swift
//  E-avtomaktab
//
//  Created by Boburmirzo on 3/16/21.
//

import SwiftUI

struct IntranceFuncScreen: View {
    var body: some View {
        VStack(alignment: .center){
            List{
                ForEach(0..<8) { _ in
                    HStack{
                        ForEach(0..<2) { _ in
                            IntranceFuncCell()
                        }
                    }
                }
                
            }.listStyle(PlainListStyle())
        }
    }
}


struct IntranceFuncScreen_Previews: PreviewProvider {
    static var previews: some View {
        IntranceFuncScreen()
    }
}
