//
//  expenseObject.swift
//  Take your money
//
//  Created by Sagyndyk on 04.04.2024.
//

import Foundation

class Expense {
    var Name: String
    var value: Int
    
    init(Name: String, value: Int){
        self.Name = Name
        self.value = value
    }
}

let expense1 = Expense(Name:"Бензин", value: 3000)
let expense2 = Expense(Name:"Еда", value: 1500)
let expense3 = Expense(Name:"Разное", value: 4250)

