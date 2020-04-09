//
//  OrderScreen.swift
//  SwiftUI_OrderUp
//
//  Created by Ivan Ivanov on 08.04.2020.
//  Copyright © 2020 Ivan Ivanov. All rights reserved.
//

import SwiftUI

struct OrderScreen: View {
    
    var pizzas = Pizza.all()
    
    @State var cartPriceCounter: Double
    
    var body: some View {
        NavigationView {
            List {
                ForEach(pizzas) { pizza in
                    TodoRow(pizza: pizza, cartPriceCounter: self.$cartPriceCounter)
                    .padding()
                    
                }
            }
            .navigationBarTitle(Text("Pizza"))
            .navigationBarItems(trailing: Cart(cartPriceCounter: $cartPriceCounter))
        }
    
    }
}

struct TodoRow: View {
    
    let pizza: Pizza
    @Binding var cartPriceCounter: Double
    
    var body: some View {
        HStack {
            
            Image(pizza.image)
            .resizable()
                .frame(width: 100, height: 100)
                
            Text(pizza.name)
                .fontWeight(.bold)
                .font(.headline)
            Spacer()
            CartButton(cartPriceCounter: $cartPriceCounter, pizza: pizza)
        }
    }
}

//struct OrderScreen_Previews: PreviewProvider {
//    var pizzas = Pizza.all()
//    static var previews: some View {
//        OrderScreen(pizzas: pizzas, cartPriceCounter: 0.0)
//    }
//}
