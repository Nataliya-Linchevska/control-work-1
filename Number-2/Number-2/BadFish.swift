//
//  BadFish.swift
//  Number-2
//
//  Created by user on 09.11.16.
//  Copyright © 2016 user. All rights reserved.
//

import Foundation
//Клас поганої рибки. Вага стабільна = 10, передаю в батьківський клас
// Ввожу для підрахунку зжертих рибок счотчик foodCount
class BadFish: Fish {
    var foodCount = 0
    init() {
        super.init(weight: 10)
    }
    func changeWeight(weightFood: Int) {
        self.weight += weightFood  // Додаю вагу зжертих рибок
        foodCount += 1              // Рахую кількість зжертих рибок
    }
}
