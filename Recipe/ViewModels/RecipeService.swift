//
//  RecipeViewModel.swift
//  Recipe
//
//  Created by Alex Grzechowski on 12/16/24.
//

import Foundation

class RecipeService {
    private let baseURL = "https://d3jbb8n5wk0qxi.cloudfront.net/recipes.json"

    func fetchRecipes() async throws -> [Recipe] {
        guard let url = URL(string: baseURL) else { throw URLError(.badURL) }

        let (data, _) = try await URLSession.shared.data(from: url)
        let decodedResponse = try JSONDecoder().decode(RecipesResponse.self, from: data)
        return decodedResponse.recipes
    }
}
