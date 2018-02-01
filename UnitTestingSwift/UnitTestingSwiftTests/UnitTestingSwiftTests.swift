//
//  UnitTestingSwiftTests.swift
//  UnitTestingSwiftTests
//
//  Created by Guilherme Paciulli on 31/01/18.
//  Copyright © 2018 Guilherme Paciulli. All rights reserved.
//

import XCTest
@testable import UnitTestingSwift

class UnitTestingSwiftTests: XCTestCase {
    
    var axe:Axe!
    var sword:Sword!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        axe = Axe()
        sword = Sword()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testAxeBiggerDamage(){
        XCTAssertTrue(axe.damage > sword.damage)
        
    }
    
}
