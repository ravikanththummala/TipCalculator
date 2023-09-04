//
//  TipCalculatorTests.swift
//  TipCalculatorTests
//
//  Created by Ravikanth Thummala on 9/4/23.
//

import XCTest

final class when_calculting_tip_based_on_total_amount: XCTestCase {
    
    func test_should_calculate_tip_successfully(){
        let tipCalculator = TipCalculator()
        let tip = try! tipCalculator.calculate(total: 100.0, tripPercentage: 0.1)
        XCTAssertEqual(10, tip)
    }
}

class when_calculting_tip_based_negative_total_amount: XCTestCase {

    func test_should_throw_invalid_input_exception(){
     
        let tipCalculator = TipCalculator()

        XCTAssertThrowsError(try tipCalculator.calculate(total: -100, tripPercentage: 0.1)) { error in
            XCTAssertEqual(error as! TipCalculatorError, TipCalculatorError.invalidInput)
        }
    }
}
