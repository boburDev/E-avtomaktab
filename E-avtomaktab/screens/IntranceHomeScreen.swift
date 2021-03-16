//
//  IntranceHomeScreen.swift
//  E-avtomaktab
//
//  Created by Boburmirzo on 3/16/21.
//

import SwiftUI

struct IntranceHomeScreen: View {
    @State var backgroundOffset: CGFloat = 0
    var body: some View {
        VStack{
            HStack{
                IntranceCardCell(image: "im_hero-1", header: "Ariza Holati", text: "Avtomaktabga yuborgan arizangiz holatini tekshiring", btnText: "Yuboorish")
                    .frame(width: UIScreen.width)
                
                IntranceCardCell(image: "im_hero-2", header: "Online Ariza", text: "Avtomaktabda ta’lim olish uchun onlayn ariza yuborish", btnText: "Tekshirish")
                    .frame(width: UIScreen.width)
                
                IntranceCardCell(image: "im_hero-3", header: "Ariza Holati", text: "Onlayn masofaviy ta’lim platformasi", btnText: "Tizimga kirish")
                    .frame(width: UIScreen.width)
            }
            .offset(x: -(self.backgroundOffset * UIScreen.width))
            .animation(.default)
            
            ZStack{
                Rectangle()
                    .fill(Color.white.opacity(0.3))
                    .frame(width: 300, height: 100)
                    .cornerRadius(10)
                
                HStack{
                    Circle()
                        .fill(self.backgroundOffset == -1 ? Color(hex: "4F335A") :Color(hex: "9771A3"))
                        .frame(width: (self.backgroundOffset == -1) ? 25 : 20, height: (self.backgroundOffset == -1) ? 25 : 20)

                    Circle()
                        .fill(self.backgroundOffset == 0 ? Color(hex: "4F335A") :Color(hex: "9771A3"))
                        .frame(width: (self.backgroundOffset == 0) ? 25 : 20, height: (self.backgroundOffset == 0) ? 25 : 20)
                        .padding()
                    Circle()
                        .fill(self.backgroundOffset == 1 ? Color(hex: "4F335A") :Color(hex: "9771A3"))
                        .frame(width: (self.backgroundOffset == 1) ? 25 : 20, height: (self.backgroundOffset == 1) ? 25 : 20)
                }
            }
//            .position(x: UIScreen.width/2, y: UIScreen.height*6/7)
        }
        .gesture(
            DragGesture()
                .onEnded({ value in
                    if value.translation.width > 0 {
                        if self.backgroundOffset > -1 {
                            self.backgroundOffset -= 1
                        }
                    } else if value.translation.width < 2 {
                        if self.backgroundOffset < 1 {
                            self.backgroundOffset += 1
                        }
                    }
                })
        )
    }
}

struct IntranceHomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        IntranceHomeScreen()
    }
}
