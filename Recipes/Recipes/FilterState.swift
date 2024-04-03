//
//  FilterState.swift
//  Recipes
//
//  Created by Chiara Cangelosi on 25/03/24.
//

import Foundation

/*The view controller in UIKit will own the data model and pass it to the SwiftUI filter view to modify the selection. So that the change in selection can be reflected in both the filter list and the collection view, the object encapsulating it has to conform to the ObservableObject protocol, and the selection property has to be marked with the @Published property wrapper. */

class FilterState: ObservableObject
{
    @Published var selection: Recipe.Difficulty?
}
