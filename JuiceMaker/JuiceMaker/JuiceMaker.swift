//
//  JuiceMaker - JuiceMaker.swift
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//
import Foundation

struct JuiceMaker {
    var fruitInformation: [FruitTypes: FruitStock] = [
        .strawberry: FruitStock(fruit: .strawberry, stock: 10),
        .banana: FruitStock(fruit: .banana, stock: 10),
        .kiwi: FruitStock(fruit: .kiwi, stock: 10),
        .mango: FruitStock(fruit: .mango, stock: 10),
        .pineapple: FruitStock(fruit: .pineapple, stock: 10)
    ]

    func didMakeJuice(of orderedMenu: JuiceTypes) -> Bool {
        for (fruitType, requiredAmount) in orderedMenu.recipe() {
            if let fruit = fruitInformation[fruitType], fruit.haveStock(requiredAmount) {
                    fruit.subtractStock(requiredAmount)
                } else { return false }
            }
        return true
    }
}
