//
//  SettingsView.swift
//  Swift-Documentation
//
//  Created by Sasutski on 22/9/23.
//

import SwiftUI
import SwiftPersistence

struct SettingsView: View {
    @Persistent("colorScheme") var colorScheme = "System Preference"
    
    var colorSchemeOptions = ["Dark Mode", "Light Mode", "System Preference"]

    var body: some View {
        NavigationStack {
            VStack {
                List {
                    Picker("Color Scheme", selection: $colorScheme) {
                        ForEach(colorSchemeOptions, id: \.self) {
                            Text($0)
                        }
                    }
                    .onChange(of: colorScheme) {
                        if colorScheme == "Dark Mode" {
                            UIApplication.shared.windows.first?.rootViewController?.overrideUserInterfaceStyle = .dark
                        } else if colorScheme == "Light Mode" {
                            UIApplication.shared.windows.first?.rootViewController?.overrideUserInterfaceStyle = .light
                        } else {
                            UIApplication.shared.windows.first?.rootViewController?.overrideUserInterfaceStyle = .unspecified
                        }
                        
                        UserDefaults.standard.set(colorScheme, forKey: "colorScheme")
                    }

                }
            }
            .navigationTitle("Settings")
        }
    }
}


#Preview {
    SettingsView()
}
