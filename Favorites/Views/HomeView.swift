//
//  HomeView.swift
//  Favorites
//
//  Created by Brooke Gates on 7/9/25.
//

import Foundation
import SwiftUIive

struct HomeView: View {
    @EnvironmentObject var viewModel: FavoritesViewModel

    var body: some View {
        NavigationStack {
            ZStack {
                Color.pink.opacity(0.1)
                    .ignoresSafeArea()

                List {
                    // Cities Section
                    Section(header: Text("Cities").foregroundColor(.pink)) {
                        ForEach(viewModel.cities) { city in
                            HStack {
                                Text(city.cityName)
                                Spacer()
                                Button(action: {
                                    viewModel.toggleFavoriteCity(city)
                                }) {
                                    Image(systemName: city.isFavorite ? "heart.fill" : "heart")
                                        .foregroundColor(.pink)
                                }
                            }
                        }
                    }

                    // Hobbies Section
                    Section(header: Text("Hobbies").foregroundColor(.pink)) {
                        ForEach(viewModel.hobbies) { hobby in
                            HStack {
                                Text("\(hobby.hobbyIcon) \(hobby.hobbyName)")
                                Spacer()
                                Button(action: {
                                    viewModel.toggleFavoriteHobby(hobby)
                                }) {
                                    Image(systemName: hobby.isFavorite ? "heart.fill" : "heart")
                                        .foregroundColor(.pink)
                                }
                            }
                        }
                    }

                    // Books Section
                    Section(header: Text("Books").foregroundColor(.pink)) {
                        ForEach(viewModel.books) { book in
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
                                    Image(systemName: book.isFavorite ? "heart.fill" : "heart")
                                        .foregroundColor(.pink)
                                }
                            }
                        }
                    }
                }
                .listStyle(.insetGrouped)
                .scrollContentBackground(.hidden)
                .background(Color.clear)
            }
            .navigationTitle("Explore")
        }
    }
}
