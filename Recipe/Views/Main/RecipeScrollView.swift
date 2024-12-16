//
//  RecipeScrollView.swift
//  Recipe
//
//  Created by Alex Grzechowski on 12/16/24.
//

import SwiftUI

struct RecipeScrollView: View {
    @StateObject private var viewModel = RecipeViewModel()
    @State private var searchText: String = ""

    var body: some View {
        Group {
            if viewModel.isLoading {
                ProgressView("Loading recipes...")
            } else if let errorMessage = viewModel.errorMessage {
                Text(errorMessage)
                    .foregroundColor(.red)
                    .multilineTextAlignment(.center)
                    .padding()
            } else if viewModel.recipes.isEmpty {
                Text("No recipes available.")
                    .foregroundColor(.gray)
                    .padding()
            } else {
                ScrollView {
                    LazyVStack(spacing: 16) {
                        ForEach(viewModel.filteredRecipes(searchText: searchText), id: \.uuid) { recipe in
                          
                                RecipeCellView(recipe: recipe)
                            
                            Divider()
                        }
                    }
                    .padding()
                }
                
                .refreshable {
                    await viewModel.loadRecipes()
                }
            }
        }
        .searchable(text: $searchText, prompt: "Search Recipes...")
        
            .task {
                await viewModel.loadRecipes()
            }
        
    }
}
