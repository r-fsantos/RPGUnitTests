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
    var bow: Bow!
    var staff: Staff!
    
    var hero: Warrior!
    var enemy: Warrior!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        axe = Axe()
        sword = Sword()
        bow = Bow()
        staff = Staff()
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAxeBiggerDamage(){
        XCTAssertTrue(axe.damage > sword.damage)
        XCTAssertTrue(axe.damage > bow.damage)
        XCTAssertTrue(axe.damage > staff.damage)
    }
    
    func testAxeVersusSword(){
        hero = Warrior(with: axe, and: "Hero")
        enemy = Warrior(with: sword, and: "Enemy")
        
        hero.attack(at: enemy)
        enemy.attack(at: hero)
        
        XCTAssertTrue(hero.life > enemy.life)
    }
    
    func testAxeVersusBow(){
        hero = Warrior(with: axe, and: "Hero")
        enemy = Warrior(with: bow, and: "Enemy")
        
        hero.attack(at: enemy)
        enemy.attack(at: hero)
        XCTAssertTrue(hero.life > enemy.life)
    }
    
    func testAxeVersusStaff(){
        hero = Warrior(with: axe, and: "Hero")
        enemy = Warrior(with: staff, and: "Enemy")
        
        hero.attack(at: enemy)
        enemy.attack(at: hero)
        
        XCTAssertTrue(hero.life > enemy.life)
    }
    
    func testAxeVersusAxe(){
        hero = Warrior(with: axe, and: "Hero")
        enemy = Warrior(with: axe, and: "Enemy")
        
        XCTAssertTrue(hero.life == enemy.life)
    }
    
    func testSwordVersusBow(){
        hero = Warrior(with: sword, and: "Hero")
        enemy = Warrior(with: bow, and: "Enemy")
        
        hero.attack(at: enemy)
        enemy.attack(at: hero)
        
        XCTAssertTrue(hero.life > enemy.life)
    }
    
    func testSwordVersusStaff(){
        hero = Warrior(with: sword, and: "Hero")
        enemy = Warrior(with: staff, and: "Enemy")
        
        hero.attack(at: enemy)
        enemy.attack(at: hero)
        
        XCTAssertTrue(hero.life > enemy.life)
    }
    
    func testSwordVersusSword(){
        hero = Warrior(with: sword, and: "Hero")
        enemy = Warrior(with: sword, and: "Enemy")
        
        hero.attack(at: enemy)
        enemy.attack(at: hero)
        
        XCTAssertTrue(hero.life == enemy.life)
    }
    
    func testBowVersusStaff(){
        hero = Warrior(with: bow, and: "Hero")
        enemy = Warrior(with: staff, and: "Enemy")
        
        hero.attack(at: enemy)
        enemy.attack(at: hero)
        
        XCTAssertTrue(hero.life < enemy.life)
    }
    
    func testBowVersusBow(){
        hero = Warrior(with: bow, and: "Hero")
        enemy = Warrior(with: bow, and: "Enemy")
        
        hero.attack(at: enemy)
        enemy.attack(at: hero)
        
        XCTAssertTrue(hero.life == enemy.life)
    }
    
    func testStaffVersusStaff(){
        hero = Warrior(with: staff, and: "Hero")
        enemy = Warrior(with: staff, and: "Enemy")
        
        hero.attack(at: enemy)
        enemy.attack(at: hero)
        
        XCTAssertTrue(hero.life == enemy.life)
    }
    
}
