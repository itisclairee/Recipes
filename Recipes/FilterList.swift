//
//  FilterList.swift
//  Recipes
//
//  Created by Chiara Cangelosi on 25/03/24.
//

import SwiftUI

struct FilterList: View {
    
    @Binding var selection: Recipe.Difficulty?
    
    var body: some View 
    {
        List(Recipe.Difficulty.allCases, id: \.self) 
        { level in
            HStack 
            {
                Text(level.description.capitalized)
                Spacer()

                if selection == level 
                {
                    Image(systemName: "checkmark")
                }
            }
            .padding(.vertical, 8)
            .contentShape(.interaction, Rectangle())
            .onTapGesture 
            {
                selection = level
            }
            .accessibilityElement(children: .combine)
            .accessibilityAddTraits(.isButton)
        }
        .listStyle(.plain)
    }
}

struct FilterList_Previews: PreviewProvider {
    static var previews: some View {
        FilterList(selection: .constant(.medium))
    }
}
