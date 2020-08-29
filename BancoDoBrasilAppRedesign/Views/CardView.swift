//
//  CardView.swift
//  BancoDoBrasilAppRedesign
//
//  Created by Raphael Cerqueira on 28/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack(alignment: .top) {
            HStack {
                Button(action: {
                    
                }) {
                    Image(systemName: "clear")
                }
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Image(systemName: "bookmark.fill")
                }
            }
            .foregroundColor(Color.gray)
            
            VStack {
                Text("Evento")
                    .fontWeight(.bold)
                    .foregroundColor(Color(#colorLiteral(red: 0.1027265415, green: 0.2158908844, blue: 0.3266140223, alpha: 1)))

                Text("UX CONF 2018")
                    .foregroundColor(Color("blue"))

                Text("Olá, o Banco do Brasil está patrocinando o UX CONF\nna sua cidade e clientes BB tem 50% de desconto.")
                    .lineLimit(nil)
                    .font(.system(size: 13, weight: .medium))
                    .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                    .padding(.top)

                Button(action: {

                }) {
                    Text("Saiba mais")
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .foregroundColor(.white)
                        .background(Color(#colorLiteral(red: 0.004681163933, green: 0.4778388739, blue: 0.998493135, alpha: 1)))
                        .cornerRadius(25)
                        .padding(.top)
                }
            }
        }
        .padding(8)
        .background(Color.white)
        .frame(maxWidth: UIScreen.main.bounds.width - 20)
        .cornerRadius(5)
        .shadow(color: Color.black.opacity(0.1), radius: 3, x: 0, y: 0)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .background(Color.gray)
    }
}
