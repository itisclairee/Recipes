//
//  Recipe.swift
//  Recipes
//
//  Created by Chiara Cangelosi on 25/03/24.
//

import Foundation

struct Recipe: Hashable
{
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
    let description: String
    let difficulty: Difficulty
    let steps: [String]
    
    private let id = UUID()
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

