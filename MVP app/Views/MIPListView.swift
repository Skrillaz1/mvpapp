//
//  MIPListView.swift
//  MVP app
//
//  Created by Naysean Smith on 3/13/23.
//

import SwiftUI

struct MIPListView: View {
    
    @ObservedObject var model = MIPPlayerModel ()
     
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
                   
            }.navigationBarTitle("MIP Candidates")
                
        }
        
        
    }
}

struct MIPListView_Previews: PreviewProvider {
    static var previews: some View {
        MIPListView()
    }
}
