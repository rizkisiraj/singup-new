//
//  RootView.swift
//  SingUp-New-Surya
//
//  Created by Surya on 21/08/25.
//

import SwiftUI

struct RootView: View {
    
    @StateObject var coordinator = AppCoordinator()
    
    var body: some View {
        switch coordinator.flow {
        case .splash:
            SplashScreen()
        case .onboarding:
            OnboardingView {
                coordinator.didFinishOnboarding()
            }
        case .home:
            HomeView()

        }
    }
}

#Preview {
    RootView()
}
