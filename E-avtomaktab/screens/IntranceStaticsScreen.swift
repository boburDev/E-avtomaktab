//
//  IntranceStaticsScreen.swift
//  E-avtomaktab
//
//  Created by Boburmirzo on 3/17/21.
//

import SwiftUI

struct IntranceStaticsScreen: View {
    var body: some View {
        VStack{
            ZStack{
                VStack{
                    
                }.frame(width: UIScreen.width/4, height:2).background(Color.black).offset(x: 105, y: 0)
                Text("STATISTIKA").fontWeight(.bold)
                VStack{
                    
                }.frame(width: UIScreen.width/4, height:2).background(Color.black).offset(x: -105, y: 0)
            }
            HStack{
                IntranceStaticsCell(title: "AVTOMAKTABLAR", no: "218")
                IntranceStaticsCell(title: "GURUHLAR", no: "2,994")
            }
            HStack{
                IntranceStaticsCell(title: "XODIMLAR", no: "4,613")
                IntranceStaticsCell(title: "O'QUVCHILAR", no: "75,233")
            }
        }
    }
}

struct IntranceStaticsScreen_Previews: PreviewProvider {
    static var previews: some View {
        IntranceStaticsScreen()
    }
}
