//
//  SendMoneyIntent.swift
//  IntentsDemo
//
//  Created by Hugues Stéphano TELOLAHY on 21/03/2025.
//

import AppIntents

struct SendMoneyIntent: AppIntent {
    static var title: LocalizedStringResource = "Send Money"
    static var description = IntentDescription("Send money to a contact")

    @Parameter(title: "Amount")
    var amount: Double

    @Parameter(title: "Recipient")
    var recipient: String

    @AppDependency
    var navigationManager: NavigationManager

    static var openAppWhenRun: Bool = true

    func perform() async throws -> some IntentResult {
        await MainActor.run {
            navigationManager.sendMoney = .init(amount: amount, recipient: recipient)
        }

        return .result()
    }
}
