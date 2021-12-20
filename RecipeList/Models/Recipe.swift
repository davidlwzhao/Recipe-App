//
//  Recipe.swift
//  RecipeList
//
//  Created by David Zhao on 20/12/2021.
//

import Foundation

class Recipe: Decodable, Identifiable {
    var id: UUID?
    var name: String
    var featured: Bool
    var image: String
    var description: String
    var prepTime: String
    var cookTime: String
    var totalTime: String
    var servings: Int
    var ingredients: [String]
    var directions: [String]
}
