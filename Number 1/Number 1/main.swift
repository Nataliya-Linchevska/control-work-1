//
//  main.swift
//  Number 1
//
//  Created by user on 09.11.16.
//  Copyright © 2016 user. All rights reserved.
//

import Foundation



let firstPlayerIndex = 0;
let secondPlayerIndex = 1;
let playersInTeamCount = 2;


var players = ["Ukraine", "Russia", "USA", "China", "Italy", "France", "Spain", "Germany", "England", "Ireland", "Norway", "Holland", "Poland", "Netherlands", "Iceland", "Portugal"]


//players.count


var teams = [[String]](repeating:[String](), count:players.count/playersInTeamCount)
//print(teams)


for player in players {
    var isPlayerInTeam = false
    while !(isPlayerInTeam) {
        var randomTeamIndex = Int(arc4random_uniform(UInt32(players.count/playersInTeamCount)))
        if teams[randomTeamIndex].count < playersInTeamCount {
            teams[randomTeamIndex].append(player)
            isPlayerInTeam = true
//            teams.dropLast()
        }
    }
}



print(teams)




