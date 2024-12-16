//
//  RecipeDetailView.swift
//  Recipe
//
//  Created by Alex Grzechowski on 12/16/24.
//

import SwiftUI

struct RecipeDetailView: View {
    let recipe: Recipe
    @Environment(\.presentationMode) var mode
    @State private var showAlert = false
    var body: some View {
        VStack{
            Text("Let's cook \(recipe.name)!")
                .font(.title2)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
            
                if let url = recipe.photo_url_large {
                    AsyncImage(url: url) { phase in
                        switch phase {
                        case .success(let image):
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(maxHeight: 450)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        case .failure:
                            Image(systemName: "photo")
                                .resizable()
                                .scaledToFit()
                                .frame(maxHeight: 250)
                                .foregroundColor(Color("Text"))
                        default:
                            ProgressView()
                                .frame(width: 60, height: 60)
                        }
                    }
                } else {
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .frame(maxHeight: 60)
                        .foregroundColor(Color("Text"))
                }
            
                Text("\(recipe.cuisine) dish...")
                    .font(.title2)
                    .fontWeight(.bold)
            Text("Want a step by step guide on how to make \(recipe.name)?")
                .font(.subheadline)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding()
            Image(systemName: "arrow.down")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.red)
                .multilineTextAlignment(.center)
                .padding()
            
            Button{
                showAlert.toggle()
            }label: {
                HStack{
                    Text("Watch Video!")
                        .font(.title3)
                        .foregroundColor(Color("Text"))

                    Image(systemName: "play.fill")
                        .font(.title3)
                        .foregroundColor(.red)
                }.frame(width: 250)
                .padding()
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color("Text"), lineWidth: 2)
                    }
            }.alert("Open external link to watch a youtube video on \(recipe.name)?", isPresented: $showAlert) {
                if let url = recipe.youtube_url{
                    Link(destination: url, label: {
                        Text("Open")
                })
                    Button(role: .cancel, action: {}) {
                        Text("Cancel")
                    }
                       
                }
                         }
               
            }
           
        
        
    }
}


