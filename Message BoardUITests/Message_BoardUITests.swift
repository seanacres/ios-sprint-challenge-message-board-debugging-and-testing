//
//  Message_BoardUITests.swift
//  Message BoardUITests
//
//  Created by Spencer Curtis on 9/14/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest

class Message_BoardUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()

        // KEEP THIS SETUP FUNCTION EXACTLY AS IS.
        
        continueAfterFailure = false
        
        let app = XCUIApplication()
        
        app.launchArguments = ["UITesting"]
        app.launch()
    }
    
    func testNewMessageDismisses() {
        firstMessageThreadCell.tap()
        addMessageButton.tap()
        
        XCTAssertTrue(sendMessageButton.exists)
        sendMessageButton.tap()
        
        XCTAssertTrue(firstMessageThreadDetailCell.isHittable)
    }
    
    var sendMessageButton: XCUIElement {
        let app = XCUIApplication()
        let button = app.navigationBars.buttons.element(boundBy: 1)
        XCTAssertTrue(button.exists)
        return button
    }
    
    var addMessageButton: XCUIElement {
        let app = XCUIApplication()
        let button = app.navigationBars.buttons.element(boundBy: 1)
        XCTAssertTrue(button.exists)
        return button
    }
    
    var firstMessageThreadCell: XCUIElement {
        let app = XCUIApplication()
        let cell = app.cells["MessageThreadsTableVC.Cell[0, 0]"]
        XCTAssertTrue(cell.exists)
        return cell
    }
    
    var firstMessageThreadDetailCell: XCUIElement {
        let app = XCUIApplication()
        let cell = app.cells["MessageThreadDetailTableVC.Cell[0, 0]"]
        XCTAssertTrue(cell.exists)
        return cell
    }
    
}
