//
//  PlayerModel.swift
//  MVP app
//
//  Created by Naysean Smith on 2/19/23.
//

import Foundation



class PlayerModel: ObservableObject {
    
    @Published var players = [Players]()
    
    init() {
        
               self.players = DataService.getLocalData()
        
        //Set the recipes property
        
        
    }
    
}
 

