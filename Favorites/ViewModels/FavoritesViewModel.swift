//
//  FavoritesViewModel.swift
//  Favorites
//
//  Created by Brooke Gates on 7/9/25.
//

import Foundation
import SwiftUI

class FavoritesViewModel: ObservableObject {
    @Published var cities: [CityModel] = sampleCities
    @Published var hobbies: [HobbyModel] = sampleHobbies
    @Published var books: [BookModel] = sampleBooks

    var favoriteCities: [CityModel] {
        cities.filter { $0.isFavorite }
    }

    var favoriteHobbies: [HobbyModel] {
        hobbies.filter { $0.isFavorite }
    }

    var favoriteBooks: [BookModel] {
        books.filter { $0.isFavorite }
    }

    func toggleFavoriteCity(_ city: CityModel) {
        if let index = cities.firstIndex(where: { $0.id == city.id }) {
            cities[index].isFavorite.toggle()
        }
    }

    func toggleFavoriteHobby(_ hobby: HobbyModel) {
        if let index = hobbies.firstIndex(where: { $0.id == hobby.id }) {
            hobbies[index].isFavorite.toggle()
        }
    }

    func toggleFavoriteBook(_ book: BookModel) {
        if let index = books.firstIndex(where: { $0.id == book.id }) {
            books[index].isFavorite.toggle()
        }
    }
}

// MARK: - Sample Data

let sampleCities: [CityModel] = [
    CityModel(id: 1, cityName: "Cape Town", cityImage: "capetown", isFavorite: false),
    CityModel(id: 2, cityName: "Amsterdam", cityImage: "amsterdam", isFavorite: false),
    CityModel(id: 3, cityName: "Tokyo", cityImage: "tokyo", isFavorite: false)
]

let sampleHobbies: [HobbyModel] = [
    HobbyModel(id: 1, hobbyName: "Photography", hobbyIcon: "📷", isFavorite: false),
    HobbyModel(id: 2, hobbyName: "Cooking", hobbyIcon: "🍳", isFavorite: false),
    HobbyModel(id: 3, hobbyName: "Gaming", hobbyIcon: "🎮", isFavorite: false)
]

let sampleBooks: [BookModel] = [
    BookModel(id: 1, bookTitle: "To Kill a Mockingbird", bookAuthor: "Harper Lee", isFavorite: false),
    BookModel(id: 2, bookTitle: "1984", bookAuthor: "George Orwell", isFavorite: false),
    BookModel(id: 3, bookTitle: "Pride and Prejudice", bookAuthor: "Jane Austen", isFavorite: false)
]
