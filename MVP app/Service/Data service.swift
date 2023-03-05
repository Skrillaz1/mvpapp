//
//  Data service.swift
//  MVP app
//
//  Created by Naysean Smith on 2/19/23.
//

import Foundation
 
class DataService {
    
      static func getLocalData() -> [Players] {
        
        
        //Parse local json file
        
        // Get a url path to json file
        let pathString = Bundle.main.path(forResource: "MVP", ofType: "json")
        
        guard pathString != nil else{
            return [Players]()
        }
        
        
        // Create url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            // Create a data object
            
            let data = try Data(contentsOf: url)
            
            // Decode data with json decoder
            let decoder = JSONDecoder()
            
            do {
                let playerData = try decoder.decode([Players].self, from: data)
                
                // add unique ids
                for p in playerData {
                    p.id = UUID()
                }
                // return the player
                return playerData
                
            }
            
            catch {
                //error with parsing json
                print(error)
            }
            
            
        }
        catch {
            // error with getting data
            print(error)
            
        }
        
        return [Players]()
    }
    
    
}
    

