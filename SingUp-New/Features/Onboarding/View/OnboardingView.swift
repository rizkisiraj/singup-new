//
//  OnboardingView.swift
//  SingUp-New-Surya
//
//  Created by Surya on 20/08/25.
//

import SwiftUI

struct OnboardingView: View {
    @StateObject private var viewModel = OnboardingViewModel()
    var onFinish: () -> Void

    var body: some View {
        VStack(spacing: 40) {
            // MARK: Image with slide + fade animation
            ZStack {
                ForEach(viewModel.steps) { step in
                    if step.id == viewModel.currentStep.id {
                        Image(step.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 300)
                            .transition(.asymmetric(
                                insertion: .move(edge: .trailing).combined(with: .opacity),
                                removal: .move(edge: .leading).combined(with: .opacity))
                            )
                            .id(step.id)
                    }
                }
            }
            .animation(.easeInOut(duration: 1.5), value: viewModel.currentStepIndex)
            .padding(.top, 100)
            
            // MARK: Texts with slide + fade animation
            ZStack {
                ForEach(viewModel.steps) { step in
                    if step.id == viewModel.currentStep.id {
                        VStack(alignment: .leading, spacing: 8) {
                            Text(step.title)
                                .font(.title)
                                .bold()
                                .multilineTextAlignment(.leading)
                                .fixedSize(horizontal: false, vertical: true)
                            
                            Text(step.subtitle)
                                .font(.body)
                                .foregroundColor(.gray)
                                .multilineTextAlignment(.leading)
                                .fixedSize(horizontal: false, vertical: true)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .transition(.asymmetric(
                            insertion: .move(edge: .trailing).combined(with: .opacity),
                            removal: .move(edge: .leading).combined(with: .opacity))
                        )
                        .id(step.id)
                    }
                }
            }
            .frame(height: 120)
            .animation(.easeInOut(duration: 1.5), value: viewModel.currentStepIndex)
            
            Spacer()
            
            // MARK: Dots and Button
            VStack(spacing: 50) {
                HStack(spacing: 8) {
                    ForEach(0..<viewModel.steps.count, id: \.self) { index in
                        Capsule()
                            .fill(index == viewModel.currentStepIndex ? Color("PrimaryColor") : Color.gray.opacity(0.5))
                            .frame(width: index == viewModel.currentStepIndex ? 40 : 8, height: 8)
                            .animation(.easeInOut(duration: 1.0), value: viewModel.currentStepIndex)
                    }
                }
                
                Button(action: {
                    if viewModel.isLastStep {
                        onFinish()
                    } else {
                        viewModel.nextStep()
                    }
                }) {
                    Text(viewModel.currentStep.buttonTitle)
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color("PrimaryColor"))
                        .cornerRadius(10)
                }
                .padding(.bottom, 40)
            }
        }
        .padding(.horizontal, 32)
    }
}

//#Preview {
//    OnboardingView()
//}
