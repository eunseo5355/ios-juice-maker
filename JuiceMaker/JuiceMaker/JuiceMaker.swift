//
//  JuiceMaker - JuiceMaker.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import Foundation

struct JuiceMaker {
    var fruits: [FruitTypes: Fruit] = [
        .strawberry: Fruit(.strawberry),
        .banana: Fruit(.banana),
        .kiwi: Fruit(.kiwi),
        .mango: Fruit(.mango),
        .pineapple: Fruit(.pineapple)
    ]
    
    func makeJuice(juice: JuiceTypes) {
        for (fruit, requiredAmount) in juice.getRecipe() {
            if let fruitStock = fruits[fruit] {
                if fruitStock.checkStock(requiredAmount) {
                    fruitStock.subtractStoke(requiredAmount)
                } else {
                    print("재고가 모자라요.")
                    return
                }
            }
        }
        print("\(juice.getName()) 나왔습니다! 맛있게 드세요!")
    }
}
