//
//  Cart.swift
//  SwiftUI_OrderUp
//
//  Created by Ivan Ivanov on 08.04.2020.
//  Copyright © 2020 Ivan Ivanov. All rights reserved.
//

import SwiftUI

struct Cart: View {
    
   @Binding var cartPriceCounter: Double
    
    var body: some View {
        
         ZStack {
            Image("cart")
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(maxWidth: 50)
            
            ZStack {
                Circle()
                    .fill(Color.red)
                    .frame(maxWidth: 100)
                    .frame(width: 70)
                    .opacity(0.8)
                Text("\(String(format: "%.2f", Double(self.cartPriceCounter)))")
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
            }
            .offset(x: 10, y: 20)
            
        }
        .offset(x: -10, y: 0)
    }
}

//struct Cart_Previews: PreviewProvider {
//
//    @State var cartPriceCounter: Double
//
//    static var previews: some View {
//        Cart(cartPriceCounter: $cartPriceCounter)
//    }
//}
