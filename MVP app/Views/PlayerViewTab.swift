//
//  PlayerViewTab.swift
//  MVP app
//
//  Created by Naysean Smith on 3/1/23.
//

import SwiftUI

struct PlayerViewTab: View {
    var body: some View {
        
        TabView {
            
            Image("NBA")
                .resizable()
                .scaledToFit()
                .tabItem {
                    VStack{
                        
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                    
                    
                }
            
            
            PlayersListView()
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("MVP")
                }
            
            
            MostImproveView()
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Most Improved")
                    
                }
                    }
            
            
        }
        
      
            
           
        }
    


struct PlayerViewTab_Previews: PreviewProvider {
    static var previews: some View {
        PlayerViewTab()
    }
}
