//
//  Intern.swift
//  PayrollSystem
//
//  Created by MacStudent on 2018-08-20.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Intern: Employee  {
    var internSchoolName: String?
    override func  printMyData() {
        super.printMyData()
        print("Employee is Intern Type")
        print("Intern School name is \(internSchoolName!)")
        if(vehicle == nil)
        {
            print("Employee has no vehicle")
        }
        vehicle?.printMyData()
    }
    
    
}
