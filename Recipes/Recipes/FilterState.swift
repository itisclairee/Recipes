//
//  FilterState.swift
//  Recipes
//
//  Created by Chiara Cangelosi on 25/03/24.
//

import Foundation

class FilterState: ObservableObject 
{
    @Published var selection: Recipe.Difficulty?
}
