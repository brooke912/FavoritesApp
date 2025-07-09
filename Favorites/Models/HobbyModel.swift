//
//  HobbyModel.swift
//  Favorites
//
//  Created by Brooke Gates on 7/9/25.
//

import Foundation

struct HobbyModel: Identifiable, Equatable {
    var id: Int
    var hobbyName: String
    var hobbyIcon: String
    var isFavorite: Bool
}
