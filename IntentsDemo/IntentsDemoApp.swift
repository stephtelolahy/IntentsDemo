//
//  IntentsDemoApp.swift
//  IntentsDemo
//
//  Created by Hugues Stéphano TELOLAHY on 21/03/2025.
//

import SwiftUI
import AppIntents

@main
struct IntentsDemoApp: App {
    let navigationManager: NavigationManager

    init() {
        let navigationManager = NavigationManager()
        AppDependencyManager.shared.add(dependency: navigationManager)
        self.navigationManager = navigationManager
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(navigationManager)
        }
    }
}
