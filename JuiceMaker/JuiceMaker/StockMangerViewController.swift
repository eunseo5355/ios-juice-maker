//
//  StockMangerViewController.swift
//  JuiceMaker
//
//  Created by kio on 2021/03/13.
//

import UIKit

class StockMangerViewController: UIViewController {

    @IBOutlet weak var testNumber: UILabel!
    var Number = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchUpDismisButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func addNumber(_ sender: Any) {
        Number += 1
        testNumber.text = String(Number)
    }
    
    @IBAction func substractNumber(_ sender: Any) {
        Number -= 1
        testNumber.text = String(Number)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
