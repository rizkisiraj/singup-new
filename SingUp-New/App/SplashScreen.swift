//
//  SplashScreen.swift
//  SingUp-New-Surya
//
//  Created by Surya on 21/08/25.
//

import SwiftUI

struct SplashScreen: View {
    @State private var animateCircle = false
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color("PrimaryColor").opacity(0.6), lineWidth: 4)
                .frame(width: animateCircle ? 600 : 400, height: animateCircle ? 600 : 400)
                .animation(.linear(duration: 1.5), value: animateCircle)
            
            Circle()
                .stroke(Color("PrimaryColor").opacity(0.6), lineWidth: 4)
                .frame(width: animateCircle ? 800 : 600, height: animateCircle ? 800 : 600)
                .animation(.linear(duration: 1.5), value: animateCircle)
            
            Circle()
                .stroke(Color("PrimaryColor").opacity(0.6), lineWidth: 4)
                .frame(width: animateCircle ? 1000 : 800, height: animateCircle ? 1000 : 800)
                .animation(.linear(duration: 1.5), value: animateCircle)
            
            if colorScheme == .dark {
                Image("SingUp-Logo-Dark-Mode")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 160)
            } else {
                Image("SingUp-Logo-Light-Mode")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 160)
            }
        }
        .onAppear {
            animateCircle = true
        }
        
    }
}

#Preview {
    SplashScreen()
}


