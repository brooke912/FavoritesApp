//
//  CityModel.swift
//  Favorites
//
//  Created by Brooke Gates on 7/9/25.
//

import Foundation

struct CityModel: Identifiable, Equatable {
    var id: Int
    var cityName: String
    var cityImage: String
    var isFavorite: Bool
}
