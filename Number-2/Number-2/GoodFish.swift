//
//  GoodFish.swift
//  Number-2
//
//  Created by user on 09.11.16.
//  Copyright © 2016 user. All rights reserved.
//

import Foundation
// Клас хороших рибок. Нащадок риби.
//Рандомлю їх вагу і передаю в ініціалізатор батьківського класу
class GoodFish: Fish {
    init() {
        super.init(weight: Int(arc4random_uniform(10)+1))
    }
}
