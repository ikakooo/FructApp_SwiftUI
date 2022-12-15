//
//  FructApp.swift
//  FructApp_SwiftUI
//
//  Created by IKAKOOO on 12/15/22.
//

import SwiftUI

@main
struct FructApp: App {
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
