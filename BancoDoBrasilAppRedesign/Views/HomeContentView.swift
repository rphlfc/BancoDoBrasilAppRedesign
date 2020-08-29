//
//  HomeContentView.swift
//  BancoDoBrasilAppRedesign
//
//  Created by Raphael Cerqueira on 28/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct HomeContentView: View {
    var body: some View {
        VStack {
            TopView()
            
            AccountInfoView()
                .padding(.top)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(0 ..< 3) { item in
                        CardView()
                    }
                }
                .padding(.horizontal)
            }
            
            HStack {
                RoundedRectangle(cornerRadius: 2)
                    .frame(width: 20, height: 4)
                    .foregroundColor((Color(#colorLiteral(red: 0.7223841548, green: 0.8097758889, blue: 0.8519445062, alpha: 1))))
                
                RoundedRectangle(cornerRadius: 2)
                    .frame(width: 20, height: 4)
                    .foregroundColor((Color(#colorLiteral(red: 0.01769135147, green: 0.3331726789, blue: 0.6613820195, alpha: 1))))
                
                RoundedRectangle(cornerRadius: 2)
                    .frame(width: 20, height: 4)
                    .foregroundColor((Color(#colorLiteral(red: 0.7223841548, green: 0.8097758889, blue: 0.8519445062, alpha: 1))))
            }
            .padding(.top, 8)
            
            Spacer()
        }
        .background(Color(#colorLiteral(red: 0.9332516193, green: 0.9333856702, blue: 0.9332222342, alpha: 1)))
    }
}

struct HomeContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeContentView()
    }
}
