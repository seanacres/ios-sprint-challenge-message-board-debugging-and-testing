//
//  MessageThreadTests.swift
//  MessageBoardTests
//
//  Created by Andrew R Madsen on 9/13/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest
@testable import Message_Board

class MessageThreadTests: XCTestCase {
    func testCreateMessageOnServer() {
        let messageController = MessageThreadController()
        let thread = MessageThread(title: "Test")
        
        messageController.createMessageThread(with: thread.title) {
            XCTAssertTrue(!messageController.messageThreads.isEmpty)
        }
    }
    
    func testFetchMessagesFromServer() {
        let messageController = MessageThreadController()
        
        messageController.fetchMessageThreads {
            XCTAssertTrue(!messageController.messageThreads.isEmpty)
        }
    }
    
    
    
}
