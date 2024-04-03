//
//  RecipeSteps.swift
//  Recipes
//
//  Created by Chiara Cangelosi on 25/03/24.
//

import SwiftUI

struct RecipeSteps: View 
{
    @State private var selectedSegment = 0
    let steps: [String]
    let ingredients: [String]
    
    var body: some View 
    {
                VStack (alignment: .leading)
                {
                    Picker("", selection: $selectedSegment)
                    {
                        Text("Ingredients").tag(0)
                        Text("Instructions").tag(1)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    //.padding()
                   
                    
                    
                        if(selectedSegment == 1)
                        {
                            
                            ForEach(
                                Array(zip(0..<steps.count, steps)),
                                id: \.0
                            ) { count, step in
                                Text("\(count+1). \(step)")
                            }
                        }
                        if (selectedSegment == 0)
                        {
                            ForEach(
                                Array(zip(0..<ingredients.count, ingredients)),
                                id: \.0
                            ) { count, ingredient in
                                Text("\(ingredient)")
                            }
                        }
                    
                }

            
        
    }
}

struct RecipeSteps_Previews: PreviewProvider {
    private static let controller = RecipeController()
    
    static var previews: some View {
        RecipeSteps(steps: controller.recipes[0].steps, ingredients: controller.recipes[0].ingredients)
    }
}
