//
//  FructusApp.swift
//  Fructus
//
//  Created by Dhruvin Mulani on 2024-02-19.
//

import SwiftUI

@main
struct FructusApp: App {
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
