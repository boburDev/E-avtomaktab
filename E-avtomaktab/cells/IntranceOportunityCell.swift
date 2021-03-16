//
//  IntranceOportunityCell.swift
//  E-avtomaktab
//
//  Created by Boburmirzo on 3/16/21.
//

import SwiftUI

struct IntranceOportunityCell: View {
    var image = "back_1"
    var text = "multi-profil"
    var textBody = "Hududiy rahbar/admin, Avtomaktab direktori, Moderator, Buxgalter, O'qituvchi, Instruktor, O'quvchi"
    @State private var pressed = false
    var body: some View {
        VStack{
            Text("E-AVTOMAKTAB IMKONIYATLARI".uppercased())
                .bold()
                .font(.title)
                .foregroundColor(Color(hex: "4F335A"))
            VStack{
                ZStack{
                        Image(image)
                            .scaleEffect(pressed ? 1.2 : 1)
                            .animation(.linear)
                            .clipped()
                            .cornerRadius(15)
                            
                    Text(text.uppercased())
                        .bold()
                        .font(pressed ? .title : .largeTitle)
                        .foregroundColor(.white)
                        .offset(x: 0, y: pressed ? -40 : 0)
                        .animation(.linear)
                    
                    Text(textBody)
                        .fontWeight(.semibold)
                        .font(Font.system(size: pressed ? 18 : 0, design: .default))
    //                    .frame(width: UIScreen.width*0.6/2)
                        .multilineTextAlignment(.center)
                        .lineLimit(3)
                        .foregroundColor(.white).opacity(pressed ? 1 : 0)
                        .offset(x: 0, y: pressed ? 20 : 250)
                        .animation(.linear)
                        .padding(8)
                }
                .onTapGesture {
                    self.pressed.toggle()
                    print(pressed)
                }
            }.frame(width: UIScreen.width/3)
        }
    }
}

struct IntranceOportunityCell_Previews: PreviewProvider {
    static var previews: some View {
        IntranceOportunityCell()
    }
}
