//
//  ContentView.swift
//  Recipe
//
//  Created by Alex Grzechowski on 12/16/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
        
           RecipeScrollView()
            .navigationTitle("Recipe Finder 🍕🍔🥩")
        }
    }
}

#Preview {
    ContentView()
}
