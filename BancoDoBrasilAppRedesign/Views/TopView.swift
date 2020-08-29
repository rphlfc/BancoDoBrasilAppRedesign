//
//  TopView.swift
//  BancoDoBrasilAppRedesign
//
//  Created by Raphael Cerqueira on 28/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct TopView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                ZStack {
                    HStack {
                        Button(action: {

                        }) {
                            Image(systemName: "line.horizontal.3")
                        }

                        Spacer()

                        Button(action: {

                        }) {
                            Image(systemName: "bell.fill")
                        }

                        Button(action: {

                        }) {
                            Image(systemName: "magnifyingglass")
                        }
                        .padding(.leading)
                    }
                    .padding()

                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30)
                }
                .foregroundColor(Color("blue"))

                Spacer()
            }
            .frame(maxWidth: .infinity)
            .frame(height: 220)
            .background(BackgroundShape().foregroundColor(Color("yellow")))
            
            VStack {
                HStack(alignment: .bottom) {
                    VStack {
                        Button(action: {
                            
                        }) {
                            Image(systemName: "chart.bar")
                                .padding()
                                .background(Color.white)
                                .clipShape(Circle())
                                .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 5)
                                .foregroundColor(Color("yellow"))
                                .overlay(Circle().stroke(Color.white.opacity(0.7), lineWidth: 12))
                        }
                        
                        Text("Meus Investimentos")
                            .font(.system(size: 12, weight: .bold))
                            .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                            .padding(.top)
                    }
                    
                    Spacer()
                    
                    Image("robinson")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100)
                        .clipShape(Circle())
                        .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 5)
                        .overlay(Circle().stroke(Color.white.opacity(0.7), lineWidth: 8))
                    
                    Spacer()
                    
                    VStack {
                        Button(action: {
                            
                        }) {
                            Image(systemName: "rosette")
                                .padding()
                                .background(Color.white)
                                .clipShape(Circle())
                                .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 5)
                                .foregroundColor(Color("yellow"))
                                .overlay(Circle().stroke(Color.white.opacity(0.7), lineWidth: 12))
                        }
                        
                        Text("Minha Pontuação")
                            .font(.system(size: 12, weight: .bold))
                            .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                            .padding(.top)
                    }
                }
                
                VStack {
                    Text("Robinson Cardoso")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(Color(#colorLiteral(red: 0.1027265415, green: 0.2158908844, blue: 0.3266140223, alpha: 1)))
                        .padding(.top)
                    
                    Text("AG: 2797-9 | C/C: 11620-3")
                        .font(.system(size: 10, weight: .bold))
                        .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                }
            }
            .padding(.horizontal)
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
