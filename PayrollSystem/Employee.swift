//
//  Employee.swift
//  PayrollSystem
//
//  Created by MacStudent on 2018-08-20.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
let date = Date()
let calendar = Calendar.current
// current year extracation from date component
let currentYear = calendar.component(.year, from: date)


// Created Employee Class

class Employee: IPrintable {
    var employeeName: String?
    var age: Int?
    var vehicle: Vehicle?
    var employeeId: Int?
    
    
    
    func calBirthYear() -> Int {
        return currentYear - age!
    }
    
    func printMyData() {
        print("Name of Employee is = \(employeeName!) \nYear of Birth of Employee = \(calBirthYear()) \nEmployee Id is =  \(employeeId!) ")
        
    }
    
    
}
