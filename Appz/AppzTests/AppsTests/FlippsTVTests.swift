//
//  FlippsTVTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/8/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class FlippsTVTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let quora = Applications.FlippsTV()
        XCTAssertEqual(quora.scheme, "flippshd:")
        XCTAssertEqual(quora.fallbackURL, "http://www.flipps.com")
    }
    
    func testOpen() {
        
        let action = Applications.FlippsTV.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
