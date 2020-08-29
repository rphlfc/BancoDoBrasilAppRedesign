//
//  MenuView.swift
//  BancoDoBrasilAppRedesign
//
//  Created by Raphael Cerqueira on 28/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    @State var selectedItem = 0
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack(alignment: .bottom) {
                Spacer()
                ForEach(0..<menuData.count) { i in
                    Button(action: {
                        self.selectedItem = i
                    }) {
                        VStack {
                            Image(systemName: menuData[i].imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24)
                                .foregroundColor(self.selectedItem == i ? Color.white : Color(#colorLiteral(red: 0.4750679135, green: 0.7579161525, blue: 0.871245563, alpha: 1)))
                            
                            Text(menuData[i].title)
                                .font(.system(size: 12, weight: .regular))
                                .foregroundColor(self.selectedItem == i ? Color.white : Color(#colorLiteral(red: 0.4750679135, green: 0.7579161525, blue: 0.871245563, alpha: 1)))
                        }
                    }
                    
                    Spacer()
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 4)
            .background(Color("blue"))
        }
    }
}

struct MenuItem: Identifiable {
    let id = UUID().uuidString
    var imageName: String
    var title: String
}

let menuData = [
    MenuItem(imageName: "qrcode.viewfinder", title: "Pagamentos"),
    MenuItem(imageName: "chart.bar", title: "Finanças"),
    MenuItem(imageName: "house", title: "Home"),
    MenuItem(imageName: "mappin.and.ellipse", title: "Encontre"),
    MenuItem(imageName: "arrow.2.squarepath", title: "Transferências")
    
]

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
