//
//  Competitions.swift
//  Number 1
//
//  Created by user on 09.11.16.
//  Copyright © 2016 user. All rights reserved.
//

import Foundation


class Competitions {
    var player1: String
    var player2: String
    init(player1: String, player2: String) {
        self.player1 = player1
        self.player2 = player2
    }
    func game() -> [Array] {
        var tempString = player1 + " - " player2
        return tempString
    }
}
