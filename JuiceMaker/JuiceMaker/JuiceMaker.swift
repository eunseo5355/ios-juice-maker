//
//  JuiceMaker - JuiceMaker.swift
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.

import Foundation

/// 쥬스 메이커 타입
enum TypesOfFruitJuice {
    case strawberryJuice
    case bananaJuice
    case kiwiJuice
    case pineappleJuice
    case strawberryAndBananaJuice
    case mangoJuice
    case mangoAndKiwiJuice
}


enum TypesOfFruit {
    case strawberry
    case banana
    case kiwi
    case pineapple
    case mango
    
}

class JuiceMaker {
    public private(set) var strawberry: Int = 10
    public private(set) var banana: Int = 10
    public private(set) var kiwi: Int = 10
    public private(set) var pineapple: Int = 10
    public private(set) var mango: Int = 10

    
    /// 과일재고프린트 메서드
    func printStockOfFruit() {
        print("""
                    *과일재고현황*
                    딸기: \(strawberry)
                    바나나: \(banana)
                    키위: \(kiwi)
                    파인애플: \(pineapple)
                    망고: \(mango)
                    """)
    }
    
    /// 과일재고 1개 추가 메서드
    func addStockOfFruit(addFruit: TypesOfFruit) {
        
        switch addFruit {
        case .strawberry:
            strawberry += 1
        case .banana:
            banana += 1
        case .kiwi:
            kiwi += 1
        case .pineapple:
            pineapple += 1
        case .mango:
            mango += 1
        default:
            print("쓸모없는 과일입니다")
        }
        print("\(addFruit)가 추가되었습니다.")
    }
    
    /// 만들 수 있는지 재고 체크하는 메서드
    func checkStockOfFruit(checkFruit: TypesOfFruitJuice) -> Bool {
        
        switch checkFruit {
        case .strawberryJuice:
            if strawberry >= 16 {
                return true
            } else {
                return false
            }
        case .bananaJuice:
            if banana >= 2 {
                return true
            } else {
                return false
            }
        case .kiwiJuice:
            if kiwi >= 3 {
                return true
            } else {
                return false
            }
        case .pineappleJuice:
            if pineapple >= 2 {
                return true
            } else {
                return false
            }
        case .strawberryAndBananaJuice:
            if strawberry >= 10 && banana >= 1 {
                return true
            } else {
                return false
            }
        case .mangoJuice:
            if mango >= 3 {
                return true
            } else {
                return false
            }
        case .mangoAndKiwiJuice:
            if mango >= 2 && kiwi >= 1 {
                return true
            } else {
                return false
            }
        }
    }
    
    /// 과일재고감소 메서드
    func removeStockOfFruit(checkFruit: TypesOfFruit, numberOfFruit: Int) {
        
        switch checkFruit {
        case .strawberry:
            strawberry -= numberOfFruit
        case .banana:
            banana -= numberOfFruit
        case .kiwi:
            kiwi -= numberOfFruit
        case .pineapple:
            pineapple -= numberOfFruit
        case .mango:
            mango -= numberOfFruit
        default:
            print("쓸모없는 과일입니다")
        }
    }
        
        /// 과일쥬스 만들기 메서드
    func makeFruitJuice(_ OrderedJuice: TypesOfFruitJuice) {
        
        switch OrderedJuice {
        case .strawberryJuice:
            removeStockOfFruit(checkFruit: .strawberry, numberOfFruit: 16)
        case .bananaJuice:
            removeStockOfFruit(checkFruit: .banana, numberOfFruit: 2)
        case .kiwiJuice:
            removeStockOfFruit(checkFruit: .kiwi, numberOfFruit: 3)
        case .pineappleJuice:
            removeStockOfFruit(checkFruit: .pineapple, numberOfFruit: 2)
        case .strawberryAndBananaJuice:
            // 미해결
            removeStockOfFruit(checkFruit: .strawberry, numberOfFruit: 16)
        case .mangoJuice:
            removeStockOfFruit(checkFruit: .mango, numberOfFruit: 3)
        case .mangoAndKiwiJuice:
            // 미해결
            removeStockOfFruit(checkFruit: .strawberry, numberOfFruit: 16)
        default:
            print("잘못된 주문입니다.")
        }
    }
        
    /// 주문 전체과정 메서드
    func juiceOrderProcess(orderJuice: TypesOfFruitJuice) {
        
        var wantToKnowMake: Bool = checkStockOfFruit(checkFruit: orderJuice)
        
        switch wantToKnowMake {
        case true:
            makeFruitJuice(orderJuice)
        case false:
            print("\(orderJuice)를 만들 재고가 부족하거나 잘못된 주문입니다.")
            
        }
    }
}
        
JuiceMaker().juiceOrderProcess(orderJuice: .bananaJuice)
