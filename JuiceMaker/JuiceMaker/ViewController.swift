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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let Juice = JuiceMaker.init()
//        print(JuiceMaker.FruitStock)
        
        var strawberry = FruitStock.init(.strawberry, 10)
        var banana = FruitStock.init(.banana, 10)
        var pineapple = FruitStock.init(.pineapple, 10)
        var kiwi = FruitStock.init(.kiwi, 10)
        var mango = FruitStock.init(.mango, 10)
        
        strawberryStock.text = String(strawberry.stock)
        bananaStock.text = String(banana.stock)
        pineappleStock.text = String(pineapple.stock)
        kiwiStock.text = String(kiwi.stock)
        mangoStock.text = String(mango.stock)
    }

    @IBAction func strawberryJuice(_ sender: Any) {
        let alert = UIAlertController(title: "주문 성공", message: "\(JuiceTypes.strawberryJuice.rawValue) 나왔습니다! 맛있게 드세요!", preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        
        present(alert, animated: false, completion: nil)
    }
    
    
    
}

