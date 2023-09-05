//
//  ContentViewPage.swift
//  TipCalculatorUITests
//
//  Created by Ravikanth Thummala on 9/5/23.
//

import Foundation
import XCTest


class ContentViewPage {
    
    var app:XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    var totalTextField:XCUIElement {
        app.textFields["totalTextField"]
    }
    
    var calcuateTipButton: XCUIElement {
        app.buttons["calculateTipButton"]
    }
    
    var tipPercentageSegmentedControl: XCUIElement {
        app.segmentedControls["tipPercentageSegmentedControl"]
    }
    
    var tipText: XCUIElement {
        app.staticTexts["tipText"]
    }
    
    var messageText: XCUIElement {
        app.staticTexts["messageText"]
    }
}
