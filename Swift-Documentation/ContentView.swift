//
//  ContentView.swift
//  Swift-Documentation
//
//  Created by Sasutski on 21/9/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "homekit")
                }
            SettingsView()
                .tabItem {
                    Label("Sent", systemImage: "gearshape.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
