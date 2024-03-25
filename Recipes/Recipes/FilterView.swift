//
//  FilterView.swift
//  Recipes
//
//  Created by Chiara Cangelosi on 25/03/24.
//

import SwiftUI

struct FilterView: View 
{
    @ObservedObject var filterState: FilterState
    @Environment(\.dismiss) private var dismiss
    
    var body: some View 
    {
        NavigationStack 
        {
            FilterList(selection: $filterState.selection)
                .navigationTitle("Filter Recipes")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar 
                {
                    ToolbarItem(placement: .confirmationAction) 
                    {
                        Button("Done") 
                        {
                            dismiss()
                        }
                    }
                    
                    ToolbarItem(placement: .cancellationAction) 
                    {
                        Button("Clear") 
                        {
                            filterState.selection = nil
                            dismiss()
                        }
                    }
                }
        }
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView(filterState: FilterState())
    }
}
