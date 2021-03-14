//
//  JuiceMaker - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var strawberryStock: UILabel!
    @IBOutlet weak var bananaStock: UILabel!
    @IBOutlet weak var fineappleStock: UILabel!
    @IBOutlet weak var kiwiStock: UILabel!
    @IBOutlet weak var mangoStock: UILabel!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let a = JuiceMaker().fruitInformation
        
        strawberryStock.text = String("2")
        bananaStock.text = String("2")
        fineappleStock.text = String("3")
        kiwiStock.text = String("4")
        mangoStock.text = String("5")
    }

    @IBAction func strawberryJuice(_ sender: Any) {
        let alert = UIAlertController(title: "주문 성공", message: "\(JuiceTypes.strawberryJuice.rawValue) 나왔습니다! 맛있게 드세요!", preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        
        present(alert, animated: false, completion: nil)
    }
    
}

