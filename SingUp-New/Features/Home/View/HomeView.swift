//
//  HomeView.swift
//  SingUp-New-Surya
//
//  Created by Surya on 21/08/25.
//

import SwiftUI

struct HomeView: View {

    var body: some View {
        VStack(spacing: 20) {
            Text("Welcome to Home 🎉")
                .font(.largeTitle)
            
            Button("Reset Onboarding (Debug)") {
            }
            .padding()
            .background(Color.red.opacity(0.7))
            .foregroundColor(.white)
            .cornerRadius(10)
        }
    }
}

//#Preview {
//    HomeView()
//}
