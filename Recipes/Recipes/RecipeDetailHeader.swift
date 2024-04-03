//
//  RecipeDetailHeader.swift
//  Recipes
//
//  Created by Chiara Cangelosi on 25/03/24.
//

import SwiftUI

struct RecipeDetailHeader: View {
    
   
    let recipe: Recipe
    
    var body: some View
    {
        //VStack(alignment: .leading, spacing: 26)
        VStack(alignment: .center, spacing: 26)
        {
            Image(recipe.title.lowercased()).resizable().scaledToFit().opacity(0.9).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            Text("Difficulty level: \(recipe.difficulty.description)")
                .foregroundColor(.secondary)
            
            
            }
            
        }
    }
    
    struct RecipeDetailHeader_Previews: PreviewProvider {
        private static let controller = RecipeController()
        
        static var previews: some View {
            RecipeDetailHeader(recipe: controller.recipes[0])
        }
    }

