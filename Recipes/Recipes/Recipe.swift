//
//  Recipe.swift
//  Recipes
//
//  Created by Chiara Cangelosi on 25/03/24.
//

import Foundation
import UIKit

struct Recipe: Hashable
{
    //CaseIterable List view in the filter sheet can iterate over the difficulty levels
    enum Difficulty: CaseIterable
    {
        case easy
        case medium
        case hard
        
        var description: String 
        {
            switch self 
            {
                case .easy: return "easy"
                case .medium: return "medium"
                case .hard: return "hard"
            }
        }
        
    }
    
   
    
    let title: String
    let difficulty: Difficulty
    let steps: [String]
    let ingredients: [String]
    let image: UIImage?
    
    
    private let id = UUID()
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

