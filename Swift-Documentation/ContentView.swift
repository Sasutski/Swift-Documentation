//
//  ContentView.swift
//  Swift-Documentation
//
//  Created by Sasutski on 21/9/23.
//

import SwiftUI
import SwiftPersistence

struct ContentView: View {
    @Persistent("colorScheme") var colorScheme = "System Preference"
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "homekit")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }
        }
        .onAppear {
                    // Set the initial color scheme based on user defaults
                    if let storedColorScheme = UserDefaults.standard.string(forKey: "colorScheme") {
                        colorScheme = storedColorScheme
                        if storedColorScheme == "Dark Mode" {
                            UIApplication.shared.windows.first?.rootViewController?.overrideUserInterfaceStyle = .dark
                        } else if storedColorScheme == "Light Mode" {
                            UIApplication.shared.windows.first?.rootViewController?.overrideUserInterfaceStyle = .light
                        } else {
                            UIApplication.shared.windows.first?.rootViewController?.overrideUserInterfaceStyle = .unspecified
                        }
                    }
                }
    }
}

#Preview {
    ContentView()
}
