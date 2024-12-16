//
//  RecipeViewModel.swift
//  Recipe
//
//  Created by Alex Grzechowski on 12/16/24.
//

import Foundation

@MainActor
class RecipeViewModel: ObservableObject {
    @Published var recipes: [Recipe] = []
    @Published var isLoading = false
    @Published var errorMessage: String?

    private let service = RecipeService()

    //showing loading indicator for a better user experience
    func loadRecipes() async {
        isLoading = true
        errorMessage = nil

        do {
            let fetchedRecipes = try await service.fetchRecipes()
            recipes = fetchedRecipes
        } catch {
            errorMessage = "Failed to load recipes: \(error.localizedDescription). Please try reopening the application!"
        }

        isLoading = false
    }
    //Filtering for searchable
    func filteredRecipes(searchText: String) -> [Recipe] {
          if searchText.isEmpty {
              return recipes
          }
          return recipes.filter { recipe in
              recipe.name.localizedCaseInsensitiveContains(searchText) ||
              recipe.cuisine.localizedCaseInsensitiveContains(searchText)
          }
      }
}
