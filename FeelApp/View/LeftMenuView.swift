//
//  LeftMenuView.swift
//  FeelApp
//
//  Created by Руслан on 04.06.2023.
//

import SwiftUI

struct LeftMenuView: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text("Профиль")
                Button {
                    print("any")
                } label: {
                    HStack{
                        Image(systemName: "person")
                        Text("Имена игроков")
                    }
                    .foregroundColor(.black)
                }
                
            }.frame(width: 250)
                .frame(maxHeight: .infinity)
                .background(.blue)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
}

struct LeftMenuView_Previews: PreviewProvider {
    static var previews: some View {
        LeftMenuView()
    }
}
