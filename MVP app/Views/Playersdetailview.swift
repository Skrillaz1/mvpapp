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
                Spacer()
                Text("No." + players.number)
                    .font(.title)
                Spacer()
                Text("Record:" + " " + players.TeamRecord)
                    .font(.title)
                Spacer()
    
            }.fontWeight(.heavy)
            .padding(1)
            
            ScrollView{
                //MARK: player pi
                Image(players.image)
                    .resizable()
                    .scaledToFit()
                   
                
                HStack{
                    
                    Text("PPG:" + " " + players.Pts)
                    Spacer()
                    Text("APG:" + " " + players.Ast)
                    Spacer()
                    Text("RPG:" + " " + players.Reb)
                    Spacer()
                    Text("FG%:" + " " + players.FG)
                    
                }.font(.title)
                .fontWeight(.bold)
                .padding()
                
                
                Image(players.Team)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .padding(15)
                    
                
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
