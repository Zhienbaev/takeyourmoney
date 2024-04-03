//
//  incomeViewController.swift
//  Take your money
//
//  Created by Sagyndyk on 04.04.2024.
//

import UIKit

class incomeViewController: UIViewController {

    @IBOutlet weak var inputText: UITextField!
    
    @IBOutlet weak var incomeButton: UIButton!
    
    @IBOutlet weak var allIncomeLabel: UILabel!
    var IncomeAll = 0
    
    @objc func incomeCalc() {
        if let inputUser = inputText.text, let intInput = Int(inputUser){
            IncomeAll += intInput
            allIncomeLabel.text = String(IncomeAll)
            inputText.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        incomeButton.addTarget(self, action: #selector(incomeCalc), for: .touchUpInside)
        
        // Do any additional setup after loading the view.
    }

}
