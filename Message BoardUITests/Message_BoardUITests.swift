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
    
    func testNewMessage() {
        firstMessageThreadCell.tap()
        addMessageButton.tap()
        
        nameTextField.tap()
        nameTextField.typeText("Sean1")
        
        messageTextView.tap()
        messageTextView.typeText("Test1")
        
        XCTAssertTrue(sendMessageButton.exists)
        sendMessageButton.tap()
        
        XCTAssertTrue(firstMessageThreadDetailCell.isHittable)
    }
    
    func testMessageThreadCellsContainTitles() {
        XCTAssertTrue(messageThreadTableView.cells.staticTexts["A New Thread"].exists)
        XCTAssertTrue(messageThreadTableView.cells.staticTexts["Testing again"].exists)
    }
    
    func testMessageThreadDetailCellContainsTitleAndSubtitle() {
        firstMessageThreadCell.tap()
        XCTAssertFalse(messageThreadDetailTableView.cells.staticTexts["Title"].exists)
        XCTAssertFalse(messageThreadDetailTableView.cells.staticTexts["Subtitle"].exists)
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
    
    var nameTextField: XCUIElement {
        let app = XCUIApplication()
        let nameTextField = app.textFields["NewMessage.NameTextField"]
        XCTAssertTrue(nameTextField.exists)
        return nameTextField
    }
    
    var messageTextView: XCUIElement {
        let app = XCUIApplication()
        let messageTextView = app.textViews["NewMessage.MessageTextView"]
        XCTAssertTrue(messageTextView.exists)
        return messageTextView
    }
    
    var messageThreadTableView: XCUIElement {
        let app = XCUIApplication()
        let messageThreadTableView = app.tables["MessageThreadsTableView"]
        XCTAssertTrue(messageThreadTableView.exists)
        return messageThreadTableView
    }
    
    var messageThreadDetailTableView: XCUIElement {
        let app = XCUIApplication()
        let messageThreadDetailTableView = app.tables["MessageThreadDetailTableView"]
        XCTAssertTrue(messageThreadDetailTableView.exists)
        return messageThreadDetailTableView
    }
    
}
