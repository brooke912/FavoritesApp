//
//  BookModel.swift
//  Favorites
//
//  Created by Brooke Gates on 7/9/25.
//

import Foundation

struct BookModel: Identifiable, Equatable {
    var id: Int
    var bookTitle: String
    var bookAuthor: String
    var isFavorite: Bool
}
