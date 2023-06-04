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
        VStack{
            HStack{
                Button {
                    print("menu")
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
                TextFieldElement(name: $model.name2, sex: false, text: "Введите имя второго игрока")
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
