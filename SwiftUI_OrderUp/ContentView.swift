//
//  ContentView.swift
//  SwiftUI_OrderUp
//
//  Created by Ivan Ivanov on 08.04.2020.
//  Copyright © 2020 Ivan Ivanov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //Text("Hello, World!")
        OrderScreen(cartPriceCounter: 0.00)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
