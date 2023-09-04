//
//  TripCalculator.swift
//  TipCalculator
//
//  Created by Ravikanth Thummala on 9/4/23.
//

import Foundation

class TipCalculator {
    
    func calculate(total:Double, tripPercentage:Double)  throws -> Double {
        if total < 0 {
            throw TipCalculatorError.invalidInput
        }
        return total * tripPercentage
    }
    
}

enum TipCalculatorError:Error {
    case invalidInput
}
