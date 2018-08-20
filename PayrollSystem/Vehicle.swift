//
//  Vehicle.swift
//  PayrollSystem
//
//  Created by MacStudent on 2018-08-20.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Vehicle: IPrintable
{
    var make: String?
    var plate: String?
    
    init(make: String, plate: String)
    {
        self.make = make
        self.plate = plate
    }
    
    func printMyData() {
        print("Make Of car is = \(make!) \nPlate of car is = \(plate!)")
    }
}
