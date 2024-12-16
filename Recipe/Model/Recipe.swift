//
//  Recipe.swift
//  Recipe
//
//  Created by Alex Grzechowski on 12/16/24.
//

import Foundation
//Codable to parse the external json data
struct Recipe: Codable{
    let cuisine: String
    let name: String
    let photo_url_small: URL?
    let photo_url_large: URL?
    let uuid: String
    let source_url: URL?
    let youtube_url: URL?

    enum CodingKeys: String, CodingKey {
        case cuisine, name
        case photo_url_small = "photo_url_small"
        case photo_url_large = "photo_url_large"
        case uuid
        case source_url = "source_url"
        case youtube_url = "youtube_url"
    }
}

//List of all recipes to show
struct RecipesResponse: Codable {
    let recipes: [Recipe]
}
