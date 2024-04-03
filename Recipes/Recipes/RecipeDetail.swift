//
//  RecipeDetail.swift
//  Recipes
//
//  Created by Chiara Cangelosi on 25/03/24.
//

import SwiftUI

struct RecipeDetail: View {
    let recipe: Recipe
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 30) 
            {
                RecipeDetailHeader(recipe: recipe)
                RecipeSteps(steps: recipe.steps, ingredients: recipe.ingredients)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

struct RecipeDetail_Previews: PreviewProvider {
    private static let recipe = RecipeController().recipes[0]
    
    static var previews: some View {
        NavigationStack {
            RecipeDetail(recipe: recipe)
                .navigationTitle(recipe.title)
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}
