//
//  ContentView.swift
//  RecipeList
//
//  Created by David Zhao on 20/12/2021.
//

import SwiftUI

struct RecipeListView: View {
    
    // Reference model
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        NavigationView(content: {
            
            List(model.recipes) { r in
                NavigationLink(
                    destination: RecipeDetailView(recipe: r),
                    label: {
                        HStack(spacing: 20.0) {
                            Image(r.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50, alignment: .center)
                                .clipped()
                                .cornerRadius(5)
                            
                            Text(r.name)
                        }
                    }
                )
            }
            .navigationBarTitle("All Recipes")
            
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
