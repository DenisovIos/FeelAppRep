//
//  TextFieldElement.swift
//  FeelApp
//
//  Created by Руслан on 04.06.2023.
//

import SwiftUI

struct TextFieldElement: View {
    @Binding var name : String
    @State var sex = true
    var text = "Имя игрока"
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .strokeBorder(Color.purple, lineWidth: 1)
                .background(RoundedRectangle(
                    cornerRadius: 20).foregroundColor(.gray))
            HStack{
                Button {
                    sex.toggle()
                } label: {
                    Image(sex ? "male" : "female").resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .padding(10)
                        .background(.purple)
                }
                .cornerRadius(17)
                .padding(5)
                
                TextField(text, text: $name)
                    .padding(5)
                    .font(.custom("Gilroy-Regular", size: 20))
                    .foregroundColor(.black)
                    .textFieldStyle(.plain)
                
            }
            
            
            
        }
        .frame(maxHeight: 60 )
    }
}

//struct TextFieldElement_Previews: PreviewProvider {
//    static var previews: some View {
//        TextFieldElement()
//    }
//}
