//
//  CalculatorBrain.swift
//  Tipsy
//
//  Created by Sebastian Morado on 4/10/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var totalToPay : Float?
    var tipString : String?
    var numberOfPeople : Int?
    var splitAmount : Float?
    
    mutating func setTip(_ tipPercentage : String){
        tipString = tipPercentage
    }
    
    mutating func calculateAmount(amount : String) {
        totalToPay = Float(amount)
        let tip = (Float(tipString?.dropLast() ?? "0") ?? 0.0) / 100
        let safeTotalToPay = totalToPay ?? 0
        splitAmount = (safeTotalToPay + (safeTotalToPay * tip)) / Float(numberOfPeople ?? 2)
    }
    
    func getSplitAmount() -> String {
        return String(format: "%.2f", splitAmount!)
    }
    
    func getNumberOfPeople() -> Int {
        return numberOfPeople ?? 2
    }
    
    func getTipAmount() -> String {
        return tipString ?? "0%"
    }

    
}
