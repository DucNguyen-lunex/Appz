//
//  WeiboTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/8/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class WeiboTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let quora = Applications.Weibo()
        XCTAssertEqual(quora.scheme, "weibo:")
        XCTAssertEqual(quora.fallbackURL, "http://weibo.com/login.php")
    }
    
    func testOpen() {
        
        let action = Applications.Weibo.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
