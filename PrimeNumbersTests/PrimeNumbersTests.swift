//
//  PrimeNumbersTests.swift
//  PrimeNumbersTests
//
//  Created by Bryan Ayllon on 8/6/16.
//  Copyright © 2016 Bryan Ayllon. All rights reserved.
//

import XCTest
@testable import PrimeNumbers

class PrimeNumbersTests: XCTestCase {
    
    private var storyboard: UIStoryboard!
    private var controller: NumbersViewController!
    
    override func setUp() {
        super.setUp()
        storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        controller = storyboard.instantiateViewControllerWithIdentifier("NumbersViewController") as! NumbersViewController
        let _ = controller.view
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testNoPrimeNumbers() {
        controller.inputText.text = "5..12"
        controller.whenButtonIsPressed()
        let textField = controller.theLabel.text!
        XCTAssertTrue(textField == "Incorrect Input")
        controller.inputText.text = "1?2!"
        controller.whenButtonIsPressed()
        let outputNumber = controller.theLabel.text!
        XCTAssertTrue(outputNumber == "Incorrect Input")
    }
    
    
    func testDoNotUseDecimalNumbers() {
        controller.inputText.text = "3.1"
        controller.whenButtonIsPressed()
        let textField = controller.theLabel.text!
        XCTAssertTrue(textField == "Incorrect Input")
        controller.inputText.text = "33.7"
        controller.whenButtonIsPressed()
        let outputNumber = controller.theLabel.text!
        XCTAssertTrue(outputNumber == "Incorrect Input")
    }
    
    func testTextfieldIsEmpty() {
        controller.inputText.text = ""
        controller.whenButtonIsPressed()
        let outputNumber = controller.theLabel.text!
        XCTAssertTrue(outputNumber == "Incorrect Input")
    }
    
    func testUsingAnyOtherCharacters() {
        controller.inputText.text = "abc12&^*1#"
        controller.whenButtonIsPressed()
        let outputNumber = controller.theLabel.text!
        XCTAssertTrue(outputNumber == "Incorrect Input")
    }
    
    func test0to100() {
        controller.inputText.text = "101"
        controller.whenButtonIsPressed()
        let textField = controller.theLabel.text!
        XCTAssertTrue(textField == "Incorrect Input")
        controller.inputText.text = "-5"
        controller.whenButtonIsPressed()
        let outputNumber = controller.theLabel.text!
        XCTAssertTrue(outputNumber == "Incorrect Input")
    }
}
