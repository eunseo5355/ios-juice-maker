//
//  JuiceMaker - JuiceMaker.swift
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.

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
    func juiceOrderProcess(orderJuice: TypesOfFruitJuice) {
        
        checkStockOfFruit()
        makeFruitJuice(orderJuice)
        checkStockOfFruit()
    }
    
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
    func makeFruitJuice(_ OrderedJuice: TypesOfFruitJuice) {
        
        switch OrderedJuice {
        case .strawberryJuice:
            if strawberry >= 16 {
                strawberry -= 16
                print("\(OrderedJuice) 나왔습니다.")
            } else {
                print("\(OrderedJuice)를 만들 재고가 부족합니다. 재고정리 좀 하세요")
            }
        case .bananaJuice:
            if banana >= 2 {
                banana -= 2
            } else {
                print("\(OrderedJuice)를 만들 재고가 부족합니다. 재고정리 좀 하세요")
            }
        case .kiwiJuice:
            if kiwi >= 3 {
                kiwi -= 3
            } else {
                print("\(OrderedJuice)를 만들 재고가 부족합니다. 재고정리 좀 하세요")
            }
        case .pineappleJuice:
            if pineapple >= 2 {
                pineapple -= 2
            } else {
                print("\(OrderedJuice)를 만들 재고가 부족합니다. 재고정리 좀 하세요")
            }
        case .strawberryAndBananaJuice:
            if strawberry >= 10 && banana >= 1 {
                strawberry -= 10
                banana -= 1
            } else {
                print("\(OrderedJuice)를 만들 재고가 부족합니다. 재고정리 좀 하세요")
            }
        case .mangoJuice:
            if mango >= 3 {
                mango -= 3
            } else {
                print("\(OrderedJuice)를 만들 재고가 부족합니다. 재고정리 좀 하세요")
            }
        case .mangoAndKiwiJuice:
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
    }
    
}

JuiceMaker().juiceOrderProcess(orderJuice: .strawberryJuice)
