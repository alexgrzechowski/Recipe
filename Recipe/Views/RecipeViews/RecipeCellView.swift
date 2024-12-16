//
//  RecipeCellView.swift
//  Recipe
//
//  Created by Alex Grzechowski on 12/16/24.
//

import SwiftUI

struct RecipeCellView: View {
    let recipe: Recipe

    var body: some View {
        //Nav link to show details and open youtube video
        NavigationLink{
            RecipeDetailView(recipe: recipe)
        }label: {
            
        HStack(alignment: .top, spacing: 16) {
            if let url = recipe.photo_url_small {
              AsyncImage(url: url) { phase in
                    switch phase {
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                    case .failure:
                        Image(systemName: "photo.circle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                            .foregroundColor(Color("Text"))
                    default:
                        ProgressView()
                            .frame(width: 60, height: 60)
                    }
                }
            } else {
                Image(systemName: "photo.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .foregroundColor(Color("Text"))
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text(recipe.name)
                    .font(.headline)
                    .foregroundColor(Color("Text"))
                Text(recipe.cuisine)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .padding(.vertical, 8)
    }
    }
}
