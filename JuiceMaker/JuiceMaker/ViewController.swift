//
//  JuiceMaker - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var strawberryStock: UILabel!
    @IBOutlet weak var bananaStock: UILabel!
    @IBOutlet weak var pineappleStock: UILabel!
    @IBOutlet weak var kiwiStock: UILabel!
    @IBOutlet weak var mangoStock: UILabel!
    
    @IBOutlet weak var strawberryJuiceButton: UIButton!
    @IBOutlet weak var bananaJuiceButton: UIButton!
    @IBOutlet weak var pineAppleJuiceButton: UIButton!
    @IBOutlet weak var kiwiJuiceButton: UIButton!
    @IBOutlet weak var mangoJuiceButton: UIButton!
    @IBOutlet weak var strawberryBananaJuiceButton: UIButton!
    @IBOutlet weak var mangoKiwiJuiceButton: UIButton!
    
    let juiceMaker = JuiceMaker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func updateStock(orderdJuice: JuiceTypes) {
        
        switch orderdJuice {
        case .strawberryJuice:
            if let fruit = juiceMaker.fruitInformation[.strawberry] {
                strawberryStock.text = String(fruit.stock)
            } else {
                fatalError()
            }
        case .bananaJuice:
            bananaStock.text = String(juiceMaker.fruitInformation[.banana]!.stock)
        case .pineappleJuice:
            pineappleStock.text = String(juiceMaker.fruitInformation[.pineapple]!.stock)
        case .kiwiJuice:
            kiwiStock.text = String(juiceMaker.fruitInformation[.kiwi]!.stock)
        case .strawberryBananaJuice:
            if let fruit = juiceMaker.fruitInformation[.strawberry],
               let fruit2 = juiceMaker.fruitInformation[.banana] {
                strawberryStock.text = String(fruit.stock)
                bananaStock.text = String(fruit2.stock)
            } else {
                fatalError()
            }
        case .mangoKiwiJuice:
            kiwiStock.text = String(juiceMaker.fruitInformation[.kiwi]!.stock)
            mangoStock.text = String(juiceMaker.fruitInformation[.mango]!.stock)
        case .mangoJuice:
            mangoStock.text = String(juiceMaker.fruitInformation[.mango]!.stock)
        }
    }
    
    func changeScreenToStockManagerViewController() {
        guard let vcName = self.storyboard?.instantiateViewController(withIdentifier: "StockManagerViewController") as? StockManagerViewController else {
            fatalError()
        }
        self.present(vcName, animated: true, completion: nil)
    }

    func processAlert(orderedJuiceName: JuiceTypes) {
        if juiceMaker.didMakeJuice(of: orderedJuiceName) {
            showAlertIfSuccessOrder(of: orderedJuiceName)
            updateStock(orderdJuice: orderedJuiceName)
        } else {
            showAlertIfFailOrder(of: orderedJuiceName)
        }
    }
    
    func showAlertIfSuccessOrder(of JuiceName: JuiceTypes) {
        let alert = UIAlertController(title: "주문 성공", message: "\(JuiceName) 나왔습니다! 맛있게 드세요!", preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(okAction)
        
        present(alert, animated: true, completion: nil)
    }
    
    func showAlertIfFailOrder(of JuiceName: JuiceTypes) {
        let alert = UIAlertController(title: "주문 실패", message: "재료가 모자라요. 재고를 수정할까요?", preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "예", style: .default) { (actions) in
            self.changeScreenToStockManagerViewController() }
        let noAction = UIAlertAction(title: "아니오", style: .destructive, handler: nil)
        
        alert.addAction(okAction)
        alert.addAction(noAction)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func strawberryJuiceOrderButton(_ sender: Any) {
        processAlert(orderedJuiceName: .strawberryJuice)
    }

    @IBAction func BananaJuiceOrderButton(_ sender: Any) {
        processAlert(orderedJuiceName: .bananaJuice)
    }
    
    @IBAction func pineappleJuiceOrderButton(_ sender: Any) {
        processAlert(orderedJuiceName: .pineappleJuice)
    }
    
    @IBAction func kiwiJuiceOrderButton(_ sender: Any) {
        processAlert(orderedJuiceName: .kiwiJuice)
    }
    
    @IBAction func mangoJuiceOrderButton(_ sender: Any) {
        processAlert(orderedJuiceName: .mangoJuice)
    }
    
    @IBAction func strawberryBananaJuiceOrderButton(_ sender: Any) {
        processAlert(orderedJuiceName: .strawberryBananaJuice)
    }
    
    @IBAction func mangoKiwiJuiceOrderButton(_ sender: Any) {
        processAlert(orderedJuiceName: .mangoKiwiJuice)
    }
}

