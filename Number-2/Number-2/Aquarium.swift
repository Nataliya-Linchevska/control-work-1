//
//  Aquarium.swift
//  Number-2
//
//  Created by user on 09.11.16.
//  Copyright © 2016 user. All rights reserved.
//

import Foundation

class Aquarium {
    var countOfGoodFish: Int
    var arrayOfGoodFish = [GoodFish]()
    var arrayOfBadFish = [BadFish(), BadFish()] // Злих тільки дві рибки
    init() {
        countOfGoodFish = Int(arc4random_uniform(40)+10)  // Кількість хороших
    }
    func generateGoodFish() {
        for _ in 0..<countOfGoodFish {
            let goodFish = GoodFish()                       // Створюю рибинку
            arrayOfGoodFish.append(goodFish)                // Добавляю до масиву
        }
    }
    func aquariumLife() {
        while arrayOfGoodFish.count > 0 {                   //поки всі рибки не зжерті
            let goodFishIndex = Int(arc4random_uniform(UInt32(arrayOfGoodFish.count)))//випадкова хороша
            let goodFish = arrayOfGoodFish[goodFishIndex]
            
            let badFishIndex = Int(arc4random_uniform(2))
            let badFish = arrayOfBadFish[badFishIndex]      //випадкова погана
            badFish.changeWeight(weightFood: goodFish.weight)
            arrayOfGoodFish.remove(at: goodFishIndex)       // убираю зжерту рибку
        }
        
        print("Перша рибка з'їла \(arrayOfBadFish[0].foodCount) рибок")
        print("Перша рибка з'їла \(arrayOfBadFish[1].foodCount) рибок")
        print("Вага першої рибки стала \(arrayOfBadFish[0].weight)")
        print("Вага другої рибки стала \(arrayOfBadFish[1].weight)")

    }
    
}
