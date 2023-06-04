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
    var text = "Введите имя первого игрока"
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 6)
                .strokeBorder(Color.black, lineWidth: 1)
            HStack{
                Button {
                    sex.toggle()
                } label: {
                    Image(sex ? "male" : "female").resizable()
                        .scaledToFit()
                        .frame(width: 20)
                        .padding(10)
                        .background(.black)
                }
                
                TextField(text, text: $name)
                    .padding(5)
                
            }
            .cornerRadius(6)
            
            
        }
        .frame(maxHeight: 40 )
    }
}

//struct TextFieldElement_Previews: PreviewProvider {
//    static var previews: some View {
//        TextFieldElement()
//    }
//}
