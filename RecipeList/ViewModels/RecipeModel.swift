//
//  RecipeModel.swift
//  RecipeList
//
//  Created by David Zhao on 20/12/2021.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes: [Recipe]
    
    init () {
        self.recipes = DataService.getLocalData()
    }
    
}
