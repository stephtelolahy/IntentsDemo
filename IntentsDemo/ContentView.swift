//
//  ContentView.swift
//  IntentsDemo
//
//  Created by Hugues Stéphano TELOLAHY on 21/03/2025.
//

import SwiftUI

struct ContentView: View {

    @Environment(NavigationManager.self) private var navigation

    var body: some View {
        VStack {
            if let sendMoney = navigation.sendMoney {
                Text(String(format: "Do you confirm sending %.2f € to %@ ?", sendMoney.amount, sendMoney.recipient))
            } else {
                Text("Welcome")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
