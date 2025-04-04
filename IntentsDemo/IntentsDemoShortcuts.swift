//
//  IntentsDemoShortcuts.swift
//  IntentsDemo
//
//  Created by Hugues Stéphano TELOLAHY on 21/03/2025.
//

import AppIntents

class IntentsDemoShortcuts: AppShortcutsProvider {
    /// The color the system uses to display the App Shortcuts in the Shortcuts app. This is currently unused.
    static var shortcutTileColor = ShortcutTileColor.purple

    /**
     This sample app contains several examples of different intents, but only the intents this array describes make sense as App Shortcuts.
     Put the App Shortcut most people will use as the first item in the array. This first shortcut shouldn't bring the app to the foreground.

     Every phrase that people use to invoke an App Shortcut needs to contain the app name, using the `applicationName` placeholder in the provided
     phrase text, as well as any app name synonyms declared in the `INAlternativeAppNames` key of the app's `Info.plist` file. These phrases are
     localized in a string catalog named `AppShortcuts.xcstrings`.
     */
    static var appShortcuts: [AppShortcut] {

        AppShortcut(
            intent: SendMoneyIntent(),
            phrases: [
                "Send money in \(.applicationName)",
                "Envoyer de l'argent avec \(.applicationName)"
            ],
            shortTitle: "Send Money",
            systemImageName: "bahtsign.bank.building"
        )

        AppShortcut(
            intent: CheckBalanceIntent(),
            phrases: [
                "Check my balance in \(.applicationName)",
                "What is my current balance in \(.applicationName)",
                "Show my bank balance in \(.applicationName)"
            ],
            shortTitle: "Check Balance",
            systemImageName: "dollarsign.circle"
        )
    }
}
