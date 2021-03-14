//
//  IntranceCardCell.swift
//  E-avtomaktab
//
//  Created by Boburmirzo on 3/15/21.
//

import SwiftUI

struct IntranceCardCell: View {
    var image = ""
    var header = ""
    var text = ""
    var btnText = ""
    
    var body: some View {
        VStack{
            Image(image)
                .frame(maxWidth: .infinity)
                .frame(height: UIScreen.height / 3)
            
            Text(header.uppercased())
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(hex: "4F335A"))
                
                
            Text(text)
                .padding(10)
                .multilineTextAlignment(.center)
                .font(Font.system(size: 22))
                .foregroundColor(Color(hex: "9771A3"))
            
            Button(action: {
                
            }, label: {
                Text(btnText)
                    .fontWeight(.medium)
                    
                    .font(.title2)
                    .padding(8)
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
                    .foregroundColor(Color(hex: "4F335A"))
                    .background(
                        RoundedRectangle(cornerRadius: 25.0)
                            .stroke(lineWidth: 2).foregroundColor(Color(hex: "4F335A"))
                            
                    )
                    .frame(height: 45)
            })
        }.frame(height: UIScreen.height*3/5)
    }
}

struct IntranceCardCell_Previews: PreviewProvider {
    static var previews: some View {
        IntranceCardCell()
    }
}
