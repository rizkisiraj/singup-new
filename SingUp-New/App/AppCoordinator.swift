//
//  AppCoordinator.swift
//  SingUp-New
//
//  Created by Surya on 22/08/25.
//

import SwiftUI

enum AppFlow {
    case splash
    case onboarding
    case home
}

final class AppCoordinator: ObservableObject {
    @Published var flow: AppFlow = .splash
    
    init() {
        // Start with splash, then decide
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.showNextFlow()
        }
    }
    
    private func showNextFlow() {
        if isFirstLaunch() {
            flow = .onboarding
        } else {
            flow = .home
        }
    }
    
    func didFinishOnboarding() {
        UserDefaults.standard.set(true, forKey: "hasLaunched")
        flow = .home
    }
    
    private func isFirstLaunch() -> Bool {
        !UserDefaults.standard.bool(forKey: "hasLaunched")
    }
}

