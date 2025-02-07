//
//  ThirdTest.swift
//  LawHub
//
//  Created by Dylan Aird on 8/04/2016.
//  Copyright © 2016 Dylan Aird. All rights reserved.
//

import XCTest

class ThirdTest: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        
        let app = XCUIApplication()
        let tabBarsQuery = app.tabBars
        let legalWikipediaButton = tabBarsQuery.buttons["Legal Wikipedia"]
        legalWikipediaButton.tap()
        tabBarsQuery.buttons["Lawyers"].tap()
        legalWikipediaButton.tap()
        tabBarsQuery.buttons["Recent Articles"].tap()
        legalWikipediaButton.tap()
        
        let tablesQuery = app.tables
        tablesQuery.staticTexts["Marriage Law"].tap()
        app.navigationBars["Marriage Law"].buttons["Legal Wikipedia"].tap()
        tablesQuery.staticTexts["Consumer Law"].tap()
        app.navigationBars["Consumer Law"].buttons["Legal Wikipedia"].tap()
        tablesQuery.staticTexts["Something Else"].tap()
        app.navigationBars["Something Else"].buttons["Legal Wikipedia"].tap()
        
    }
    
}
