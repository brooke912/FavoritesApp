//
//  FavoritesView.swift
//  Favorites
//
//  Created by Brooke Gates on 7/9/25.
//

import Foundation
import SwiftUI

import SwiftUI

struct FavoritesView: View {
    @EnvironmentObject var viewModel: FavoritesViewModel

    var body: some View {
        NavigationView {
            ZStack {
                Color.pink.opacity(0.1)
                    .ignoresSafeArea()

                List {
                    if viewModel.favoriteCities.isEmpty &&
                        viewModel.favoriteHobbies.isEmpty &&
                        viewModel.favoriteBooks.isEmpty {
                        Text("No favorites yet!")
                            .foregroundColor(.gray)
                            .padding(.vertical)
                            .frame(maxWidth: .infinity, alignment: .center)
                    }

                    // Favorite Cities
                    if !viewModel.favoriteCities.isEmpty {
                        Section(header: Text("Cities")
                            .font(.title2)
                            .foregroundColor(.pink)) {
                            ForEach(viewModel.favoriteCities) { city in
                                HStack {
                                    Text(city.cityName)
                                    Spacer()
                                    Button(action: {
                                        viewModel.toggleFavoriteCity(city)
                                    }) {
                                        Image(systemName: "heart.slash")
                                            .foregroundColor(.pink)
                                    }
                                }
                                .padding(.vertical, 8)
                            }
                        }
                    }

                    // Favorite Hobbies
                    if !viewModel.favoriteHobbies.isEmpty {
                        Section(header: Text("Hobbies")
                            .font(.title2)
                            .foregroundColor(.pink)) {
                            ForEach(viewModel.favoriteHobbies) { hobby in
                                HStack {
                                    Text("\(hobby.hobbyIcon) \(hobby.hobbyName)")
                                    Spacer()
                                    Button(action: {
                                        viewModel.toggleFavoriteHobby(hobby)
                                    }) {
                                        Image(systemName: "heart.slash")
                                            .foregroundColor(.pink)
                                    }
                                }
                                .padding(.vertical, 8)
                            }
                        }
                    }

                    // Favorite Books
                    if !viewModel.favoriteBooks.isEmpty {
                        Section(header: Text("Books")
                            .font(.title2)
                            .foregroundColor(.pink)) {
                            ForEach(viewModel.favoriteBooks) { book in
                                HStack {
                                    VStack(alignment: .leading) {
                                        Text(book.bookTitle)
                                            .font(.subheadline)
                                        Text(book.bookAuthor)
                                            .font(.caption)
                                            .foregroundColor(.gray)
                                    }
                                    Spacer()
                                    Button(action: {
                                        viewModel.toggleFavoriteBook(book)
                                    }) {
                                        Image(systemName: "heart.slash")
                                            .foregroundColor(.pink)
                                    }
                                }
                                .padding(.vertical, 8)
                            }
                        }
                    }
                }
                .listStyle(.insetGrouped)
                .scrollContentBackground(.hidden)
                .background(Color.clear)
            }
            .navigationTitle("Favorites")
        }
    }
}
