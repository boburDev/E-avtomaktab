//
//  IntranceTestQuestionCell.swift
//  E-avtomaktab
//
//  Created by Boburmirzo on 3/17/21.
//

import SwiftUI

struct IntranceTestQuestionCell: View {
    @Environment(\.presentationMode) var presentation
    var body: some View {
        VStack{
            // Language Buttons
            VStack{
                HStack{
                    Button(action: {
                        
                    }, label: {
                        Text("O'zbekcha")
                            .frame(width: 110)
                            .foregroundColor(Color(hex: "4F335A"))
                            .padding(12)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color(hex: "4F335A"), lineWidth: 2))
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Karakalpak")
                            .frame(width: 110)
                            .foregroundColor(Color(hex: "4F335A"))
                            .padding(12)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color(hex: "4F335A"), lineWidth: 2))
                    })
                }
                HStack{
                    Button(action: {
                        
                    }, label: {
                        Text("Узбек")
                            .frame(width: 110)
                            .foregroundColor(Color(hex: "4F335A"))
                            .padding(12)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color(hex: "4F335A"), lineWidth: 2))
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Русский")
                            .frame(width: 110)
                            .foregroundColor(Color(hex: "4F335A"))
                            .padding(12)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color(hex: "4F335A"), lineWidth: 2))
                    })
                }
            }
            Spacer()
            
            Button(action: {
                presentation.wrappedValue.dismiss()
            }, label: {
                Text("Close")
            })
        }
    }
}

struct IntranceTestQuestionCell_Previews: PreviewProvider {
    static var previews: some View {
        IntranceTestQuestionCell()
    }
}
