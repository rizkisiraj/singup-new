//
//  RootView.swift
//  SingUp-New-Surya
//
//  Created by Surya on 21/08/25.
//

import SwiftUI

struct RootView: View {
    @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding: Bool = false
    
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                if hasSeenOnboarding {
                    HomeView()
                } else {
                    OnboardingView()
                }
            }
        } else {
            NavigationView {
                if hasSeenOnboarding {
                    HomeView()
                } else {
                    OnboardingView()
                }
            }
        }
    }
}

#Preview {
    RootView()
}
