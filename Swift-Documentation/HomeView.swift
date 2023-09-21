//
//  HomeView.swift
//  Swift-Documentation
//
//  Created by Sasutski on 21/9/23.
//

import SwiftUI
import SwiftPersistence

struct HomeView: View {
    @Persistent("text") var text = "Hello World"
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                Text("SwiftUI Documentation")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(20.0)
                Spacer()
                Text(text)
                
                Spacer()
                Button {
                    text = "Samuel"
                } label: {
                    Text("Samuel")
                }
                Button {
                    text = "Zhe Hao"
                } label: {
                    Text("Zhe Hao")
                }
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    HomeView()
}
