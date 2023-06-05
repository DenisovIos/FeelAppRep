//
//  ContentView.swift
//  FeelApp
//
//  Created by Руслан on 04.06.2023.
//

import SwiftUI

struct StartView: View {
    @StateObject var model = StartViewModel()
    var body: some View {
        ZStack{
                LeftMenuView()
            VStack{
                HStack{
                    Button {
                        model.menuOpen.toggle()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.purple)
                    }
                    Spacer()
                    Text("Ваши имена")
                    Spacer()
                }
                .padding(20)
                Spacer()
                VStack(alignment: .center, spacing: 20) {
                    
                    TextFieldElement(name: $model.name)
                    TextFieldElement(name: $model.name2, sex: false)
                    Button {
                        print("Hачать игру")
                    } label: {
                        Text("Начать игру")
                    }
                    .padding(6)
                    .frame(maxWidth: .infinity)
                    .frame(height: 40)
                    .foregroundColor(.black)
                    .background(.purple)
                    .cornerRadius(10)
                    
                    
                }
                .padding(20)
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.black)
            .offset(x: model.menuOpen ? 250 : 0)
            .shadow(radius: model.menuOpen ? 10 : 0)
        }
        .animation(.spring(response: 0.2, dampingFraction: 0.9, blendDuration: 0.4), value: model.menuOpen)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
