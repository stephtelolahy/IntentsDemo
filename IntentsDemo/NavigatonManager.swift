//
//  NavigatonManager.swift
//  IntentsDemo
//
//  Created by Hugues Stéphano TELOLAHY on 21/03/2025.
//

import SwiftUI

@MainActor @Observable
class NavigationManager {
    var sendMoney: SendMoney? = nil
}

struct SendMoney: Sendable {
    let amount: Double
    let recipient: String
}
