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
        updateStock()
    }

    func updateStock() {
        strawberryStock.text = String(juiceMaker.fruitInformation[.strawberry]!.stock)
        bananaStock.text = String(juiceMaker.fruitInformation[.banana]!.stock)
        pineappleStock.text = String(juiceMaker.fruitInformation[.pineapple]!.stock)
        kiwiStock.text = String(juiceMaker.fruitInformation[.kiwi]!.stock)
        mangoStock.text = String(juiceMaker.fruitInformation[.mango]!.stock)
    }
    
    func chagneScreenToStockManagerViewController() {
        guard  let vcName = self.storyboard?.instantiateViewController(withIdentifier: "StockManagerViewController") as? StockManagerViewController else {
            fatalError()
        }
        self.present(vcName, animated: true, completion: nil)
    }

    func processAlert(clickedJuiceName: JuiceTypes) {
        if juiceMaker.didMakeJuice(of: clickedJuiceName) {
            showAlertIfSuccessOrder(of: clickedJuiceName)
            updateStock()
        } else {
            showAlertIfFailOrder(of: clickedJuiceName)
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
            self.chagneScreenToStockManagerViewController() }
        let noAction = UIAlertAction(title: "아니오", style: .destructive, handler: nil)
        
        alert.addAction(okAction)
        alert.addAction(noAction)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func strawberryJuiceOrderButton(_ sender: Any) {
        processAlert(clickedJuiceName: .strawberryJuice)
    }

    @IBAction func BananaJuiceOrderButton(_ sender: Any) {
        processAlert(clickedJuiceName: .bananaJuice)
    }
    
    @IBAction func pineappleJuiceOrderButton(_ sender: Any) {
        processAlert(clickedJuiceName: .pineappleJuice)
    }
    
    @IBAction func kiwiJuiceOrderButton(_ sender: Any) {
        processAlert(clickedJuiceName: .kiwiJuice)
    }
    
    @IBAction func mangoJuiceOrderButton(_ sender: Any) {
        processAlert(clickedJuiceName: .mangoJuice)
    }
    
    @IBAction func strawberryBananaJuiceOrderButton(_ sender: Any) {
        processAlert(clickedJuiceName: .strawberryBananaJuice)
    }
    
    @IBAction func mangoKiwiJuiceOrderButton(_ sender: Any) {
        processAlert(clickedJuiceName: .mangoKiwiJuice)
    }
    
}

