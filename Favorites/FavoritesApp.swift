//
//  FavoritesApp.swift
//  Favorites
//
//  Created by Brooke Gates on 7/9/25.
//

import SwiftUI

@main
struct FavoritesApp: App {
    @StateObject private var viewModel = FavoritesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
                        }
        }
    }

