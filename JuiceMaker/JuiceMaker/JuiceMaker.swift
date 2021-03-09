//
//  JuiceMaker - JuiceMaker.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

//
//  JuiceMaker - JuiceMaker.swift
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

/// 쥬스 메이커 타입

enum TypesOfFruitJuice: String {
    case strawberryJuice = "딸기주스"
    case bananaJuice = "바나나주스"
    case kiwiJuice = "키위주스"
    case pineappleJuice = "파인애플주스"
    case strawberryAndBananaJuice = "딸바주스"
    case mangoJuice = "망고주스"
    case mangoAndKiwiJuice = "망키주스"
    
//    func readRecipeOfFruitJuice(typeOfFruitsRecipe: String) -> Array<Any> {
//
//        var arr: [String] = []
//        switch self {
//        case .strawberryJuice:
//            arr.append("딸기주스")
//            arr.append("16")
//            return arr
//        default:
//            print("error")
//            return arr
//        }
//        return arr
//    }
}

enum TypesOfFruit: String {
    case strawberry = "딸기"
    case banana = "바나나"
    case kiwi = "키위"
    case pineapple = "파인애플"
    case mango = "망고"
}

class JuiceMaker {
    public private(set) var strawberry: Int = 10
    public private(set) var banana: Int = 10
    public private(set) var kiwi: Int = 10
    public private(set) var pineapple: Int = 10
    public private(set) var mango: Int = 10

    /// 주문 전체과정 메서드
    func juiceOrderProcess(orderJuice: String) {
//        let orderJuiceMenu = takeOrderJuice()
        makeFruitJuice(OrderedJuice: orderJuice)
        checkStockOfFruit()
    }

    /// 주문을 받다
//    func takeOrderJuice() -> String {
//        print("과일주스 메뉴: 딸기, 바나나, 키위, 파인애플, 딸바, 망고, 망키")
//
//        let juice = readLine()
//        if let checkedOrderJuice = juice {
//            return checkedOrderJuice
//        } else {
//            print("옵셔널 실패")
//            return juice!
//        }
//    }
    
    /// 과일재고파악 메서드
    func checkStockOfFruit() {
        print("""
                    *과일재고현황*
                    딸기: \(strawberry)
                    바나나: \(banana)
                    키위: \(kiwi)
                    파인애플: \(pineapple)
                    망고: \(mango)
                    """)
    }
    
    /// 과일쥬스 만들기 메서드
    func makeFruitJuice(OrderedJuice: String) {
        
        switch OrderedJuice {
        case "딸기주스":
//            consumeFruitStock
//            (fruitJuiceName: OrderedJuice, typeOfFruitsToMake: "딸기", amountOfFruitsToMake: 16)
            if strawberry >= 16 {
                strawberry -= 16
                print("\(OrderedJuice) 나왔습니다.")
            } else {
                print("\(OrderedJuice)를 만들 재고가 부족합니다. 재고정리 좀 하세요")
            }
        case "바나나주스":
            if banana >= 2 {
                banana -= 2
            } else {
                print("\(OrderedJuice)를 만들 재고가 부족합니다. 재고정리 좀 하세요")
            }
        case "키위주스":
            if kiwi >= 3 {
                kiwi -= 3
            } else {
                print("\(OrderedJuice)를 만들 재고가 부족합니다. 재고정리 좀 하세요")
            }
        case "파인애플주스":
            if pineapple >= 2 {
                pineapple -= 2
            } else {
                print("\(OrderedJuice)를 만들 재고가 부족합니다. 재고정리 좀 하세요")
            }
        case "딸바주스":
            if strawberry >= 10 && banana >= 1 {
                strawberry -= 10
                banana -= 1
            } else {
                print("\(OrderedJuice)를 만들 재고가 부족합니다. 재고정리 좀 하세요")
            }
        case "망고주스":
            if mango >= 3 {
                mango -= 3
            } else {
                print("\(OrderedJuice)를 만들 재고가 부족합니다. 재고정리 좀 하세요")
            }
        case "망키주스":
            if mango >= 2 && kiwi >= 1 {
                mango -= 2
                kiwi -= 1
            } else {
                print("\(OrderedJuice)를 만들 재고가 부족합니다. 재고정리 좀 하세요")
            }
        default:
            print("잘못된 주문입니다.")
        }
    }

    /// 과일재고 1개 추가 메서드
    func addStockOfFruit(addFruit: String) {
        
        switch addFruit {
        case "딸기":
            strawberry += 1
        case "바나나":
            banana += 1
        case "키위":
            kiwi += 1
        case "파인애플":
            pineapple += 1
        case "망고주스":
            mango += 1
        default:
            print("쓸모없는 과일입니다")
        }
    }
    
    /// 과일재고삭제 메서드
//    func consumeFruitStock(fruitJuiceName: String, typeOfFruitsToMake: String, amountOfFruitsToMake: Int) {
//
//        switch fruitJuiceName {
//        case "딸기주스" :
//            typeOfFruitsToMake = r - strawberry
//            if strawberry >= 16 {
//                strawberry -= 16
//            } else {
//                print("\(consumeFruitJuice)를 만들 재고가 부족합니다. 재고관리 좀 해주세요.")
//            }
//        default:
//            print("재고와 상관없는 과일주스입니다. 주문 좀 제대로 받아주세요")
//        }
//    }
}

JuiceMaker().juiceOrderProcess(orderJuice: "딸기주스")



