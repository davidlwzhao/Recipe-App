//
//  RecipeDetailView.swift
//  RecipeList
//
//  Created by David Zhao on 20/12/2021.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe: Recipe
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                
                VStack(alignment: .leading) {
                    Text("Ingredients")
                        .fontWeight(.bold)
                    ForEach(recipe.ingredients, id: \.self) { line in
                        Text("- " + line)
                    }
                    .padding(.bottom, 1.0)
                }
                .padding(.horizontal)
                
                Divider()
                    
                
                VStack(alignment: .leading) {
                    Text("Directions")
                        .fontWeight(.bold)
                    ForEach(0..<recipe.directions.count, id: \.self) { idx in
                        Text(String(idx) + ". " + recipe.directions[idx])
                    }
                    .padding(.bottom, 1.0)
                }
                .padding(.horizontal)
            }
            
        }.navigationTitle(recipe.name)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let r = RecipeModel().recipes[0]
        RecipeDetailView(recipe: r)
    }
}
