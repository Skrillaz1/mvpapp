//
//  ContentView.swift
//  MVP app
//
//  Created by Naysean Smith on 2/19/23.
//

import SwiftUI

struct PlayersListView: View {
   
    //Reference View Model
   @ObservedObject var model = PlayerModel ()
    
    var body: some View {
        
        
      
            
        NavigationView {
            List(model.players) { r in
                
                NavigationLink(destination: PlayersDetailView(players:r), label: {
                    HStack{
                        Image(r.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50.0, height: 50.0, alignment: .center)
                            .clipped()
                            .cornerRadius(5)
                    
                        Text(r.player)
                    
                        
                    
                  }
                })
                   
            }.navigationBarTitle("MVP CANDIDATES")
                
        }
                
     
        
           
            
        }
    }


struct PlayersListView_Previews: PreviewProvider {
    static var previews: some View {
        PlayersListView()
    }
}
