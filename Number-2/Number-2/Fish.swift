//
//  Fish.swift
//  Number-2
//
//  Created by user on 09.11.16.
//  Copyright © 2016 user. All rights reserved.
//

import Foundation
// Створюю батьківський клас риба. Вага - спільна для всіх.
// Ініціалізую, але не ввожу. Вагу передам  в класі нащадка
class Fish {
    var weight: Int
    init(weight: Int) {
        self.weight = weight
    }
}
