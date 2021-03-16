//
//  IntranceOportunityScreen.swift
//  E-avtomaktab
//
//  Created by Boburmirzo on 3/16/21.
//

import SwiftUI

struct IntranceOportunityScreen: View {
    @State var backgroundOffset: CGFloat = 0
    var body: some View {
        VStack{
            HStack(spacing: 0){
                IntranceOportunityCell(image: "back_2", text: "ELEKTRON AVTOMAKTAB", textBody: "Barcha o'quv jarayoni ortiqcha jurnal va qog'ozlarsiz elektron tarzda yuritiladi (guruh yaratish, dars jadvali, o'quvchi qo'shish, chetlashtirish, davomat, baholash)")
                    .frame(width: UIScreen.width)
                
                IntranceOportunityCell(image: "back_1", text: "MULTI-PROFIL", textBody: "Hududiy rahbar/admin, Avtomaktab direktori, Moderator, Buxgalter, O'qituvchi, Instruktor, O'quvchi")
                    .frame(width: UIScreen.width)
                
                IntranceOportunityCell()
                    .frame(width: UIScreen.width)
                
            }.offset(x: -(self.backgroundOffset * UIScreen.width))
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
        }.gesture(
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

struct IntranceOportunityScreen_Previews: PreviewProvider {
    static var previews: some View {
        IntranceOportunityScreen()
    }
}
