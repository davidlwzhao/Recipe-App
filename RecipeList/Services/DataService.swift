//
//  DataService.swift
//  RecipeList
//
//  Created by David Zhao on 20/12/2021.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Recipe] {
        
        // Parse local json data
        
        // get a url to json data
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        // check if path is there
        guard pathString != nil else {
            return [Recipe]()
        }
        
        // Create URL object
        let url = URL(fileURLWithPath: pathString!)
        
        // turn into data object
        do {
            let data = try Data(contentsOf: url)
            
            // decode data object
            let decoder = JSONDecoder()
            
            do {
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                // add unique ids
                for r in recipeData {
                    r.id = UUID()
                }
                // return
                return recipeData
            }
            catch {
                print(error)
            }
        }
        catch {
            print(error)
        }
        return [Recipe]()
    }
}
