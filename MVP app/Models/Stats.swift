//
//  Stats.swift
//  MVP app
//
//  Created by Naysean Smith on 2/19/23.
//


import Foundation


class Players: Identifiable , Decodable {
   
    var id:UUID?
    var Team:String
    var player:String
    var image:String
    var number:String
    var Pts:String
    var FG:String
    var Reb:String
    var Ast:String
    var TeamRecord:String
 
    
}
