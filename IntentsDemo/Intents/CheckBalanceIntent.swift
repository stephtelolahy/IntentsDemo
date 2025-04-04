//
//  CheckBalanceIntent.swift
//  IntentsDemo
//
//  Created by Hugues Stéphano TELOLAHY on 04/04/2025.
//
import AppIntents

struct CheckBalanceIntent: AppIntent {
    static var suggestedInvocationPhrase = "What is my current balance?"
    static var title: LocalizedStringResource = "Check Balance"
    static var description = IntentDescription("Get your current account balance.")

    func perform() async throws -> some IntentResult & ProvidesDialog {
        let balance = "$1,234.56"
        return .result(dialog: "Your current balance is \(balance).")
    }
}
