//
//  PlayersDetailView.swift
//  MVP app
//
//  Created by Naysean Smith on 3/1/23.
//

import SwiftUI

struct PlayersDetailView: View {
    
    var players:Players
   
    var body: some View {
        
        
        VStack {
            
            Text(players.player)
                .font(.largeTitle)
                .fontWeight(.bold)
            HStack{
                Text("No." + players.number)
                Text("Record:" + " " + players.TeamRecord)
                
            }.fontWeight(.bold)
            .padding(1)
            
            ScrollView{
                //MARK: player pi
                Image(players.image)
                    .resizable()
                    .scaledToFit()
                HStack{
                    
                    Text("PPG:" + " " + players.Pts)
                        .fontWeight(.bold)
                    Text("APG:" + " " + players.Ast)
                    Text("RPG:" + " " + players.Reb)
                    Text("FG%:" + " " + players.FG)
                    
                }.fontWeight(.bold)
                .padding()
                    
                    
            }
            
        }
        
        
    }
}

struct PlayersDetailView_Previews: PreviewProvider {
    static var previews: some View {
       
        let model = PlayerModel()
        
        PlayersDetailView(players: model.players[0])
    }
}
