//
//  SingUp_New_SuryaApp.swift
//  SingUp-New-Surya
//
//  Created by Surya on 20/08/25.
//

import SwiftUI

@main
struct SingUp_New_SuryaApp: App {
    @State private var hasOnboarded = UserDefaults.standard.bool(forKey: "hasOnboarded")
    
    var body: some Scene {
        WindowGroup {
            AppView()

        }
    }
}
