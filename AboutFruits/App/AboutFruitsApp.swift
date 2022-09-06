//
//  AboutFruitsApp.swift
//  AboutFruits
//
//  Created by BJIT on 6/9/22.
//

import SwiftUI

@main
struct AboutFruitsApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }

        }
    }
}
