//
//  CartButton.swift
//  SwiftUI_OrderUp
//
//  Created by Ivan Ivanov on 08.04.2020.
//  Copyright © 2020 Ivan Ivanov. All rights reserved.
//

import SwiftUI

struct CartButton: View {
    
    @Binding var cartPriceCounter: Double
    
    let pizza: Pizza
    
    
    var body: some View {
        Button(action: {
            self.cartPriceCounter += self.pizza.price
        }){
            ZStack {
                Capsule()
                    .fill(Color.red)
                    .frame(width: 100, height: 25)
                Text("Add to cart")
                    .foregroundColor(.white)
                    .bold()
            }
            .padding(.trailing, 15)
            .shadow(color: .gray, radius: 2, x: 2, y: 2)
        }
    }
}

//struct CartButton_Previews: PreviewProvider {
//    static var previews: some View {
//        CartButton()
//    }
//}
