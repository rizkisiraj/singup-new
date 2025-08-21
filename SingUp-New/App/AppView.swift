//
//  AppView.swift
//  SingUp-New-Surya
//
//  Created by Surya on 21/08/25.
//

import SwiftUI

struct AppView: View {
    @State private var showSplash = true
    
    var body: some View {
        ZStack {
            if showSplash {
                SplashScreen()
            } else {
                RootView()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                withAnimation {
                    showSplash = false
                }
            }
        }
    }
}


