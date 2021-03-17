//
//  IntranceTestCell.swift
//  E-avtomaktab
//
//  Created by Boburmirzo on 3/17/21.
//

import SwiftUI

struct IntranceTestCell: View {
    
    @State var isModel = false
    
    var body: some View {
        VStack{
            Text("Bilimingizni sinab ko’ring".uppercased())
                .font(.system(size: 30))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .foregroundColor(Color(hex: "4F335A"))
                .frame(width: UIScreen.width*2.2/3)
            Image("im_test-screen")
            
            Text("4 xil tilda 700dan ortiq YHQ test savollaridan iborat onlayn test")
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .foregroundColor(Color(hex: "4F335A"))
                .frame(width: UIScreen.width*1.8/3)
            Spacer()
            Button(action: {
                self.isModel = true
            }, label: {
                Text("Testni Boshlash")
                    .fontWeight(.bold)
                    .font(.subheadline)
                    .padding(14)
                    .foregroundColor(.white)
                    .background(Color(hex: "4F335A").cornerRadius(25))
            }).sheet(isPresented: $isModel, content: {
                IntranceTestQuestionsScreen()
            })
            Spacer()
        }
    }
}

struct IntranceTestCell_Previews: PreviewProvider {
    static var previews: some View {
        IntranceTestCell()
    }
}
