//
//  ContentView.swift
//  Favorites
//
//  Created by Brooke Gates on 7/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }

            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "star.fill")
                }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(FavoritesViewModel())
}
