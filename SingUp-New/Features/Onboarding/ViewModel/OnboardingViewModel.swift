//
//  OnboardingViewModel.swift
//  SingUp-New-Surya
//
//  Created by Surya on 20/08/25.
//

import SwiftUI

class OnboardingViewModel: ObservableObject {
    @Published var currentStepIndex = 0
    
    let steps: [OnboardingModel] = [
        OnboardingModel(imageName: "first-onboarding", title: "Helping You Sing Better, Step by Step", subtitle: "SING UP is designed to help beginner singers improve their vocal quality through fun and structured training sessions.", buttonTitle: "Continue"),
        OnboardingModel(imageName: "second-onboarding", title: "Discover Your Unique Vocal Type", subtitle: "Find out how high and low you can sing so your training is more accurate and effective.", buttonTitle: "Continue"),
        OnboardingModel(imageName: "third-onboarding", title: "Warm-up, Train Your Pith Control & Track Your Progress", subtitle: "Stay motivated by monitoring your improvement after each session.", buttonTitle: "Get Started")
    ]
    
    var currentStep: OnboardingModel {
        steps[currentStepIndex]
    }
    
    var isLastStep: Bool {
        currentStepIndex == steps.count - 1
    }
    
    func nextStep() {
        if currentStepIndex < steps.count - 1 {
            currentStepIndex += 1
        } else {
            // Last step action
            UserDefaults.standard.set(true, forKey: "hasOnboarded")
        }
    }
}
