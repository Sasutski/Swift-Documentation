//
//  HomeView.swift
//  Swift-Documentation
//
//  Created by Sasutski on 21/9/23.
//

import SwiftUI

struct HomeView: View {
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
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    HomeView()
}
