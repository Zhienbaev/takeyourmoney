//
//  expenseViewController.swift
//  Take your money
//
//  Created by Sagyndyk on 04.04.2024.
//

import UIKit

class expenseViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var allExpenseLabel: UILabel!
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var valueInput: UITextField!
    
    @IBOutlet weak var expensesButton: UIButton!
    
    @IBOutlet weak var tableView: UITableView!
    var expenses = [expense1, expense2, expense3]
    
    
    
    
    
    
    @objc func onTapExpenseButton(){
        if let newValue = valueInput.text, let IntNewValue = Int(newValue){
            if let newName = nameInput.text{
                expenses.append(Expense(Name: newName, value: IntNewValue))
                calculateTotalExpense()
                valueInput.text = ""
                nameInput.text = ""
                tableView.reloadData()
            }
        }
    }
    
    func calculateTotalExpense() {
        var allExpence: Int = 0
        for expense in expenses {
            allExpence += expense.value
        }
        allExpenseLabel.text = String(allExpence)
        
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateTotalExpense()
        
        // Do any additional setup after loading the view.
        expensesButton.addTarget(self, action: #selector(onTapExpenseButton), for: .touchUpInside)
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return expenses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let expense = tableView.dequeueReusableCell(withIdentifier: "expense", for: indexPath) as! ExpenseTableViewCell
        expense.NameLabel.text = expenses[indexPath.row].Name
        expense.ValueLabel.text = String(expenses[indexPath.row].value)
        return expense
    }
    
    
    
    
}
