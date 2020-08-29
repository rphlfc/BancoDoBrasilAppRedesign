//
//  AccountInfoView.swift
//  BancoDoBrasilAppRedesign
//
//  Created by Raphael Cerqueira on 28/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct AccountInfoView: View {
    var body: some View {
        VStack {
            HStack(spacing: 5) {
                Button(action: {
                    
                }) {
                    HStack {
                        Image(systemName: "plus.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30)
                            .foregroundColor(Color("yellow"))
                        
                        VStack(alignment: .leading) {
                            Text("Saldo conta corrente")
                                .font(.system(size: 11))
                                .foregroundColor(Color("blue"))
                            
                            Text("R$ 3.563,80")
                                .font(.system(size: 14, weight: .bold))
                                .foregroundColor(Color("blue"))
                        }
                    }
                    .padding(8)
                    .background(Color.white)
                    .cornerRadius(5)
                    .shadow(color: Color.black.opacity(0.1), radius: 3, x: 0, y: 0)
                }
                
                Spacer().frame(maxWidth: 8)
                
                Button(action: {
                    
                }) {
                    HStack {
                        Image(systemName: "plus.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30)
                            .foregroundColor(Color("yellow"))
                        
                        VStack(alignment: .leading) {
                            Text("Lançamentos futuos")
                                .font(.system(size: 11))
                                .foregroundColor(Color("blue"))
                            
                            Text("R$ 1.245,90")
                                .font(.system(size: 14, weight: .bold))
                                .foregroundColor(Color("blue"))
                        }
                    }
                    .padding(8)
                    .background(Color.white)
                    .cornerRadius(5)
                    .shadow(color: Color.black.opacity(0.1), radius: 3, x: 0, y: 0)
                }
            }
            .padding(.horizontal)
            
            HStack {
                Image(systemName: "dollarsign.square")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30)
                    .foregroundColor(Color("yellow"))
                
                Spacer()
                
                Text("Consultar extrato de conta")
                    .foregroundColor(Color("blue"))
                
                Spacer()
                
                Image(systemName: "plus")
                    .foregroundColor(Color.gray)
            }
            .padding(8)
            .background(Color.white)
            .cornerRadius(5)
            .shadow(color: Color.black.opacity(0.1), radius: 3, x: 0, y: 0)
            .padding(.horizontal)
            .padding(.top, 8)
        }
    }
}

struct AccountInfoView_Previews: PreviewProvider {
    static var previews: some View {
        AccountInfoView()
    }
}
